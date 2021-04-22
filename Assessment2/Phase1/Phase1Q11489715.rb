INPUT = "Story1489715.txt"

if File.file?("Story1489715.txt") then
  puts "The file exists.\n\n\n"
  input_file = File.open(INPUT)

  input_file.each do |line|

    puts line

  end

else
  puts "\n\n\nThe file does not exists."
end

if INPUT.include? "a little boy" then
  puts "\nThere is a line of a little boy"
else
  puts "\nThere is no line of a little boy"
end


