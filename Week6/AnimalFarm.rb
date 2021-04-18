class Animal
  def initialize(name, type)
    @name = name
    @type = type
  end

  def talk
    puts 'GRRRR!!!'
  end

  def identify
    puts "Animal Name: #{@name}"
    puts "Animal Type: #{@type}"
  end

end

large_animal = Animal.new('Leo', 'Lion')
large_animal.identify
large_animal.talk

small_animal = Animal.new('Marvin', 'Mouse')
small_animal.identify
small_animal.talk

puts
large_animal.identify
large_animal.talk
small_animal.identify
small_animal.talk



