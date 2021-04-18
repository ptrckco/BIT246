
# if File.directory?("TestDir") then
#   puts "It's a folder."
# else
#   puts "It is something else."
# end
#
# if File.exist?("TestDirectory") then
#   puts "TestDirectory folder found."
# else
#   puts "TestDirectory folder created."
#   Dir.mkdir("TestDirectory")
# end

# if File.file?("Hello.txt") then
#   puts "It's a file."
# else
#   puts "It is something else."
# end

# puts "File Hello.txt is " + File.size("Hello.txt").to_s +
#        " bytes in size."

# puts Dir.entries(".")

if File.exist?("TestDir") then
  Dir.mkdir("TestDir")
end