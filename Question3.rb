class Profile
  def initialize(name)
    @name = name
  end

  def name #getter method
    @name
  end

  def name=(name) #setter method
    @name = name
  end
end

obj1 = Profile.new('Patrick Co')
p obj1.name #=> "Patrick Co"
obj1.name = 'OOP Student'
p obj1.name #=> "OOP Student"

