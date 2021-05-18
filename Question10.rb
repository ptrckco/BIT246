class Hero
  def catch_phrase1
    puts " A hero can be anyone!"
  end
  def catch_phrase2
    puts " I am the law!"
  end
end

class Spiderman < Hero
  def catch_phrase2
    puts " With great power comes great responsibility!"
  end
end
#main script
sm_object = Spiderman.new
print sm_object.catch_phrase1
print sm_object.catch_phrase2
