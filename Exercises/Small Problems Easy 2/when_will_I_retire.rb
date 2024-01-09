puts "What is your age?"
age = gets.chomp.to_i
puts "At what age would you like to retire? "
retire_age = gets.chomp.to_i

current_year = Time.now.year
working_years_left = retire_age - age
retire_year = current_year + working_years_left

puts "Good news! It's #{current_year} and you have #{working_years_left} working years left! You will retire in #{retire_year}."

