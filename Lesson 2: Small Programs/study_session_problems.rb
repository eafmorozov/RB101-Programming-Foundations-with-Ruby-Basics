# Can you write the code necessary to get the desired output shown on the last line?
make = 'Ford'
model = 'Ranger'

puts "Look it's a #{make} #{model}"
# Look! It's a Ford Ranger!


#####

# What code could we add to see each student printed with their respective grade?

students = ['Martin', 'Milo', 'Michelle']
grades = [94, 87, 98]

index = 0
while index < students.length
  puts '------------'
  puts "#{students[index]}: #{grades[index]}"
  index += 1
end


#####



# How can I access the integer 42 in each of the following collections?

arr1 = [42, 3, 9]
arr2 = [{'foo' => 13, 'bar' => 42}, true, 789]
arr3 = [nil, ['blue', [42]]]

puts arr1[0]
puts arr2[0]['bar']
puts arr3[1][1]