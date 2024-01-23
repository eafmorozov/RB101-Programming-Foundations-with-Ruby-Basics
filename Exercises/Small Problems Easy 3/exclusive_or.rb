def xor?(param1, param2)
  if param1 && !(param2)
    return true
  elsif !(param1) && param2
    return true
  else 
    return false
  end
end


p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false