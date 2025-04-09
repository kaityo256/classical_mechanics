# frozen_string_literal: true

require 'redcarpet'
require 'redcarpet/render/review'

def unescape_symbols(str)
  str.gsub!('@<underscore>', '_')
  str.gsub!('@<equal>', '=')
  str.gsub!('@<minus>', '-')
  str.gsub!('@<asterisk>', '*')
  str.gsub!('@<mynewline>', '\\\\\\\\')
  str.gsub!('@<leftbracket>', '\{')
  str.gsub!('@<rightbracket>', '\}')
  str
end

def escape_symbols(str)
  str.gsub!('_', '@<underscore>')
  str.gsub!('-', '@<minus>')
  str.gsub!('=', '@<equal>')
  str.gsub!('*', '@<asterisk>')
  str.gsub!('\\\\', '@<mynewline>')
  str.gsub!('\{', '@<leftbracket>')
  str.gsub!('\}', '@<rightbracket>')
  str
end

def escape_inline_math(str)
  while str =~ /\$(.*?)\$/
    math = escape_symbols(Regexp.last_match(1))
    str = "#{Regexp.last_match.pre_match}@<m>|#{math}|#{Regexp.last_match.post_match}"
  end
  str
end

def replace_review_command(line)
  return line if line !~ /^<!---(.*)--->$/

  key = Regexp.last_match(1).strip
  return "//}\n" if key == 'end'

  "//#{key}\{\n"
end

def in_math(file, processed_lines)
  while (line = file.gets)
    if line =~ /\$\$/
      processed_lines.append "//}\n"
      return
    else
      processed_lines.append escape_symbols(line)
    end
  end
end

def pre_process(filename)
  f = File.open(filename)
  processed_lines = []
  while (line = f.gets)
    if line =~ /\$\$/
      processed_lines.append "//texequation{\n"
      in_math(f, processed_lines)
    else
      line = replace_review_command(line)
      processed_lines.append escape_inline_math(line)
    end
  end
  processed_lines.join('')
end

def post_process(text)
  lines = text.split(/\r?\n/)
  output_lines = ""
  lines.each do |line|
    if line =~ /\=\=(.*まとめ)/
      section = Regexp.last_match(1).strip
      line = "==[nonum] #{section}"
    elsif line =~ /\=\=(.*コラム：.*)/
      section = Regexp.last_match(1).strip
      line = "==[nonum] #{section}"
    end
    output_lines += line + "\n"
  end
  output_lines
end

def convert_footnote(text)
  # 脚注定義 [^name]: 内容 を //footnote[name][内容] に変換
  text = text.gsub(/^\[\^([^\]]+)\]:\s*(.+)$/) do
    name = Regexp.last_match(1)
    content = Regexp.last_match(2)
    "//footnote[#{name}][#{content}]"
  end

  # 文中の [^name] を @<fn>{name} に変換
  text.gsub(/\[\^([^\]]+)\]/, '@<fn>{\1}')
end

render = Redcarpet::Render::ReVIEW.new
mk = Redcarpet::Markdown.new(render)
filename = ARGV[0]
text = pre_process(filename)
text = convert_footnote(text)
text = mk.render(text)
text = unescape_symbols(text)
text = post_process(text)
text = convert_footnote(text)
puts text
