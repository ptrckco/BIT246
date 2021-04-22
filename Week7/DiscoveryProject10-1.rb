begin

  print "Please enter the file name: "
fileName = STDIN.gets
  fileName.chop!
file = open(fileName)
if file
  puts "\n" + fileName + " found. Contents:\n\n"
  puts File.read(fileName)

end

rescue StandardError => e
puts = e.to_s
print "\nException processing example for a missing file.\n"
retry
end