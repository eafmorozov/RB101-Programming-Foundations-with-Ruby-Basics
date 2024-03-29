def center_of(string)
  middle_index = string.size/2
  if string.size.odd?
    string[middle_index]
  else
    string[(middle_index-1)..middle_index]
  end
end

puts center_of('I love ruby') == 'e'
puts center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'