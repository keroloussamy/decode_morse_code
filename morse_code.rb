CharactersToMorse = { 
  ".-"=>"A", "-..."=>"B", "-.-."=>"C", "-.."=>"D", "."=>"E", "..-."=>"F",
  "--."=>"G", "...."=>"H", ".."=>"I", ".---"=>"J", "-.-"=>"K", ".-.."=>"L",
  "--"=>"M", "-."=>"N", "---"=>"O", ".--."=>"P", "--.-"=>"Q", ".-."=>"R",
  "..."=>"S", "-"=>"T", "..-"=>"U", "...-"=>"V", ".--"=>"W", "-..-"=>"X",
  "-.--"=>"Y", "--.."=>"Z", "   "=>" ", " "=>""
}


def decode_char(str)
  result = ''
  str = str.split(/   /)
    str.each { |word| word.split(/ /).each{ |char| result += CharactersToMorse[char] } 
    result += ' '
  }
  return result
end  
