ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

puts ages.include?("Spot")

puts ages.fetch("Spot", "Spot is not included")

puts ages.has_key?("Spot")

puts ages.member?("Spot")

