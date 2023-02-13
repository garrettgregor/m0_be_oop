# # # Write a class called Unicorn
# # # it should have a dynamic name attribute
# # # it should have a color attribute, that is silver by default
# # # it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

class Unicorn
  attr_reader :name
  def initialize(name)
    @name = name
    @color = "silver"
  end

  def say(saying)
    puts "*~* #{saying} *~*"
  end
end

uni1 = Unicorn.new("Silver Surfer")
p uni1

uni1.say("Look at me go")



# # #  Write a class called Vampire
# # #  it should have a dynamic name attribute
# # #  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
# # #  it should have a thirsty attribute, that is true by default
# # #  it should have a drink method. When called, the thirsty attribute changes to false

class Vampire
  attr_reader :name, :pet, :thirsty
  def initialize(name, pet = "bat", thirsty = true)
    @name = name
    @pet = pet
    @thirsty = thirsty
  end
    
  def drink
    @thirsty = false
  end
end

vamp1 = Vampire.new("Dracula", "cat")
p vamp1

vamp1.drink
p vamp1


# #  Write a Dragon class
# #  it should have a dynamic name attribute (string)
# #  it should have a dynamic rider attribute (string)
# #  it should have a dynamic color attribute (string)
# #  it should have a is_hungry attribute that is true by default
# #  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon
  attr_reader :is_hungry
  def initialize(name, rider, color)
    @name = name
    @rider = rider
    @color = color
    @is_hungry = true
  end
  
  def eat(times_eaten)
    if times_eaten >= 4 
      @is_hungry = false 
    else
      @is_hungry = true
    end
  end
end

dragon1 = Dragon.new("Norbert", "Garrett", "green")
p dragon1

dragon1.eat(4)
p dragon1
 

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit
  attr_reader :name, :disposition, :age, :is_adult, :is_old
  def initialize(name, disposition, age = 0, has_ring = false, is_adult = false, is_old = false)
    @name = name
    @disposition = disposition
    @age = age
    @has_ring = has_ring
      if name == "Frodo"
        @has_ring = true
      else
        @has_ring = false
      end
    @is_adult = is_adult
      if @age > 32; @is_adult = true
      end
    @is_old = is_old
      if @age > 100
        @is_old = true
      else
        @is_old = false
      end
  end

  def celebrate_birthday
    new_birthday = @age +1
    return @age = new_birthday
  end
end

hobbit1 = Hobbit.new("Frodo", "adventurous", 32)
p hobbit1
# I would expect this to change the age to be 32

hobbit1.celebrate_birthday
p hobbit1
# I would expect this to change the age to 33 here, which it does, but then for is_adult to become true, but this doesn't seem to be happening
