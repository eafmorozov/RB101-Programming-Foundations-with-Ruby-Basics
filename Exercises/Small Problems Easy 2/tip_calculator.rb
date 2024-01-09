puts "What is your bill?"
bill = gets.chomp.to_f
puts "what is the tip percentage? "
percentage = gets.chomp.to_f

tip = (bill*percentage/100).round(2)
total = bill + tip

puts "The tip is $#{tip}."
puts "The total is $#{total}."
