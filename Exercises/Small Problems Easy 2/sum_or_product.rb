puts "Enter an integer greater than 0:"
integer = gets.chomp.to_i
puts "Enter 's' to compute the sum or 'p' to compute the product of all of the integers between 1 and #{integer}:"
input = gets.chomp

if input == 's'
  sum = 0
  (integer+1).times{|n| sum += n}
  puts "The sum of the integers between 1 and #{integer} is #{sum}."
elsif input == 'p'
  product = 1
  (integer+1).times{|n| product *= n if n!=0}
  puts "The product of the integers between 1 and #{integer} is #{product}."
else
  puts "Error, try again."
end
