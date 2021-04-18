#gets users folder name
puts "Enter the folder name: "
folder =STDIN.gets
folder.chop!

#gets users path directory
puts "Enter path directory to the folder: "
path=STDIN.gets
path.chop!

#check whether the given directory and folder exists
if File.exist?(path+folder) then
  #changing the current working directory to user given directory if it exists
  Dir.chdir(path)

  #going through each and every file in the directory
  Dir.foreach(folder) do |x|
    #check if there are text files in the user given directory
    if x =~ /[\.rb$ | \.txt]/ then

      puts x

    end
  end
else
  #printing a message if there aren't any folder in the directory
  puts "The folder that you are looking for is not inside this directory!"
end