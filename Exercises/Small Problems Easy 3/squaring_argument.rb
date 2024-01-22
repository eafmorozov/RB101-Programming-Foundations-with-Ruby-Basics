def multiply(num1, num2)
  num1 * num2
end

def square(num)
 multiply(num,num)
end

# def power_to_n(num, n)
#   result = 1
#   if n == 0 
#     return 1
#   elsif n > 0 
#     while n > 0
#      result =  multiply(num, result)
#      n -= 1
#     end
#     return result
#   else
#     while n < 0
#       result = multiply(num, result)
#       n += 1
#     end
#     return (1 / result)
#   end
# end

def exponentiate(num, power)
  result = 1
  power.times{ result = multiply(result, num) }
  result
end

puts exponentiate(4,0)
puts exponentiate(4,1)



# puts square(5) == 25
# puts square(-8) == 64

# puts power_to_n(5,3)
# puts power_to_n(200, 1)
# puts power_to_n(5.0, -3)

