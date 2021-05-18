require 'rubyXL'

puts "Enter path directory for search:"
path=STDIN.gets
path.chop!

workbook = RubyXL::Parser.parse path
worksheets = workbook.worksheets
puts "Found #{worksheets.count} worksheets"

worksheets.each do |worksheet|
  puts "Reading: #{worksheet.sheet_name}"
  num_rows = 0
  worksheet.each do |row|
    row_cells = row.cells.map{ |cell| cell.value }
    num_rows += 1
    puts row_cells
  end

  puts "Read #{num_rows} rows"
end