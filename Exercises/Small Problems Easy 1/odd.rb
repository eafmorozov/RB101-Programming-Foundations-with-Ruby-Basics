def is_odd?(integer)
  if integer >= 0
    !(integer % 2 == 0)
  else
    !((integer * -1) % 2 == 0)
  end
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true