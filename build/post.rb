while line=gets
  line.gsub!('@<underscore>','_')
  line.gsub!('@<equal>','=')
  line.gsub!('@<minus>','-')
  line.gsub!('@<mynewline>','\\\\\\\\')
  line.gsub!('@<leftbracket>','\{')
  line.gsub!('@<rightbracket>','\}')
  puts line
end
