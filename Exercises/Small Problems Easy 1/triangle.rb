def triangle(n)
  n.times do |i|
    print " " * (n - i)
    print "*" * i
    puts ""
  end
end

triangle(5)
triangle(9)