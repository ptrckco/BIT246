# Assignment 2 Phase 2
# Patrick Theodore Co
# S1489715

require 'rubyXL'
require 'find'

#obtaining user's word or phrase
puts "Enter the required word or phrase:"
input =STDIN.gets
input.chop!

#obtaning user's path directory for the search
puts "Enter path directory for search:"
path=STDIN.gets
path.chop!

count =0

# first, you have to know what you input is a path, instead of a file.
# let's find all the excel files
#
excel_files = [] #hold empty array of the path
Dir.entries(path).each { |entry| excel_files.push(entry) if entry =~ /.xlsx$/i }
puts excel_files

if excel_files.each do |file| # for each excel file
  workbook = RubyXL::Parser.parse(path + file) # get the workbook
  worksheets = workbook.worksheets # for each workbook, get all worksheets
  excel_words = [] #empty array that holds the words
  worksheets.each do |worksheet| # for each worksheets
      worksheet.each do |row| # process its row
        row_cells = row.cells.map{|cell| cell.value}
        excel_words = excel_words + row_cells
      end
      if excel_words.include? input # checking for workbooks inside the target path that has the given phrase or word
        puts "#{input} was found in #{File.basename(file)} in #{worksheet.sheet_name} worksheet and has #{excel_words.count} words." # parse file that paths into the directory or filename
        count += 1 # counts for words found
      else
        puts "#{input} is not found in #{worksheet.sheet_name}"
      end
    end
  end
end

if count == 0
  puts "Enter the new workbook:"
  newFile =STDIN.gets
  newFile.chop!
  newBook = RubyXL::Workbook.new
  newBook.worksheets[0].add_cell(0,0,input)
  newBook.write(newFile + ".xlsx")
  puts "Enter path:"
  newPath= STDIN.gets
  newPath.chop!
  new_files = RubyXL::Parser.parse(newPath + ".xlsx")
  puts "The word " + new_files[0][0][0].value + " has been added"
  
end
