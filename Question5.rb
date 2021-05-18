farray = ["apple",  "grapes", "oranges", "cherries",  "avocados"]
farray.each do |fruit|
  puts fruit if fruit =~ /e.$/
end
