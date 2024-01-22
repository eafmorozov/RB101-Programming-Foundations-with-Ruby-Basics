puts "Please write a word or multiple words: "
words = gets.chomp

char_count = 0
words.each_char do |char|
  next if char == ' '
  char_count += 1
end

puts "There are #{char_count} characters in #{words}."