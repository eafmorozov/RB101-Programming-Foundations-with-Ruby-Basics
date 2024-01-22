numbers = []

puts "Enter the 1st number: "
first_num = gets.chomp.to_i

puts "Enter the 2nd number: "
sec_num = gets.chomp.to_i

puts "Enter the 3rd number: "
third_num = gets.chomp.to_i

puts "Enter the 4th number: "
fourth_num = gets.chomp.to_i

puts "Enter the 5th number: "
fifth_num = gets.chomp.to_i

puts "Enter the last number"
last_num = gets.chomp.to_i

numbers = [first_num, sec_num, third_num, fourth_num, fifth_num]

if numbers.include?(last_num)
  puts "The number #{last_num} appears in #{numbers}."
else 
  puts "The number #{last_num} does not appear in #{numbers}."
end


