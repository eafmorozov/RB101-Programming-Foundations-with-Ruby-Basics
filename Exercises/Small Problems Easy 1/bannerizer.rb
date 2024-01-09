def print_in_box(string)
  print "+"
  (string.size + 2).times{print "-"}
  puts "+"

  print "|"
  (string.size + 2).times{print " "}
  puts "|"


  puts "| #{string} |"

  
  print "|"
  (string.size + 2).times{print " "}
  puts "|"


  print "+"
  (string.size + 2).times{print "-"}
  puts "+"

end

print_in_box('To boldly go where no one has gone before.')

print_in_box('')
