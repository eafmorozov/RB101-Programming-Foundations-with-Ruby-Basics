def reversed_number(num)
  return "Positive integers only" if num < 0
  reversed_num = ""
  num.to_s.split("").each do |digit|
    reversed_num.prepend(digit)
  end
  reversed_num.to_i
end

puts reversed_number(12345) == 54321
puts reversed_number(12213) == 31221
puts reversed_number(456) == 654
puts reversed_number(12000) == 21 # No leading zeros in return value!
puts reversed_number(12003) == 30021
puts reversed_number(1) == 1