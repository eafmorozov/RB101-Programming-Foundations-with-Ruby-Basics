def tricky_method(string_param_one, string_param_two)
  string_param_one += "rutabaga"
  string_param_two << "rutabaga"
end

string_arg_one = "pumpkins"
string_arg_two = "pumpkins"
tricky_method(string_arg_one, string_arg_two)

# outer scope
# string_arg_one --> "pumpkins"
# string_arg_two --> "pumpkinsrutabaga"

# tricky_method inner scope
# sring_param_one --> "pumpkingsrutabaga"
# string_param_two --> "pumpkinsrutabaga"

puts "String_arg_one looks like this now: #{string_arg_one}"
puts "String_arg_two looks like this now: #{string_arg_two}"

