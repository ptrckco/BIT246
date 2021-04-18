class Hero
  attr_accessor :power, :weakness
  def catch_phrase
    puts "Here I come to save the day!"
  end
end
class
UnderDog < Hero
end
class Superman < Hero
  def catch_phrase
    puts "Up, up and away!"
  end
end
class Batman < Hero
  def catch_phrase
    puts "Quick, to the batcave!"
  end
end
