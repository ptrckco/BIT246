Animals = %w[Fox Bear Cow Horse Wolf]
puts Animals.inspect

array= Animals.difference(%w[Bear Cat Horse])
puts array.inspect

puts Animals.concat(%w[Cat Duck]).inspect


puts Animals.insert(3,"new").inspect

if Animals.empty? == false then
  Animals.each{|animal| puts animal}
else
  puts "The Animal array is empty"
end

Animals.clear
puts Animals.inspect