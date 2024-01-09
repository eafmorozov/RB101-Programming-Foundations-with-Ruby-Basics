puts "What is your name? "
name = gets.chomp

if name[name.length-1] == "!"
  name.delete!("!")
  name = name.upcase
  puts "HELLO #{name}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
