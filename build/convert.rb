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
  return '//}' if key == 'end'

  "//#{key}\{"
end

def in_math(file, processed_lines)
  while (line = file.gets)
    if line =~ /\$\$/
      processed_lines.append '//}'
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

render = Redcarpet::Render::ReVIEW.new
mk = Redcarpet::Markdown.new(render)
filename = ARGV[0]
processed_text = pre_process(filename)
review_text = mk.render(processed_text)
review_text = unescape_symbols(review_text)
puts review_text
