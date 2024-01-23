def palindrome?(string)
  # split the string
  # compare the value of the first element in the string to the last element in the string
  # compare element +1 to element -1 of the string
  # continue until there <=1 elements in the string
  index_front = 0
  index_back = -1
  halfway_index = if string.size.odd?
                      string.size/2
                    else
                      string.size/2 -1
                  end

  return true if string.size <= 1
  loop do 
    return true if index_front == halfway_index
    return false if string[index_front] != string[index_back]
    index_front += 1
    index_back -= 1
  end
end






p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true