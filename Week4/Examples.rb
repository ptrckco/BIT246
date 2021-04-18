# Country = %w[USA UK AUS Japan]
# puts Country.inspect
# Country.push("NZ")
# puts Country.inspect
#
# 1.step(10,2) do |x|
#
#   print x, ". Counting by 2\n"
#
# end
# totalScore = 100
#
# puts "Game over. Your score is totalScore.“
#
# MyList = [1, 3, 5, 9, 20, -9, 0, 7, 4, 6, 2, 56, 99]
#
# puts MyList.inspect
# puts "The biggest number : #{MyList.max()}\n\n"
#
#
# class Automobile
#
#   attr_accessor :model, :color
#
#   def honk
#
#     puts "Honk!!!"
#
#   end
#
# end
#
# class Explorer < Automobile
#
# end
#
# vroom =Explorer.new
# puts vroom.honk
#
# counter = 1
#
# counter += 1 until counter < 4
#
# puts counter

# $totalScore = 100
#
# puts "Game over. Your score is #$totalScore"

# class TempConverter
#   print "Please indicate what celsius value: \n"
#   celtemp = gets.chomp
#   tempinfahren = (((9*Float(celtemp))/5) + 32)
#
#   print "#{celtemp} degrees Celsius is equal to #{tempinfahren} degrees Fahrenheit"
# end

# puts "abcd #{5*3} efg“
# puts "abcd \n efg"
# puts 'abcd #{5*3} efg’
#
def category(age)
  print "Type your age: \n"
  $age = gets.chomp
  case $age
    when 0 .. 2
      "baby"
    when 3 .. 6
      "little child"
    when 7 .. 12
      "child"
    when 12 .. 18
      "youth"
    else
      "adult"
      print " Your age is #$age"
  end
end
