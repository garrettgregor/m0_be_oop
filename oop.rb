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
puts uni1.say("Look at me go")



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

dracula = Vampire.new("Dracula", "cat")
puts dracula.drink


# #  Write a Dragon class
# #  it should have a dynamic name attribute (string)
# #  it should have a dynamic rider attribute (string)
# #  it should have a dynamic color attribute (string)
# #  it should have a is_hungry attribute that is true by default
# #  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon
  attr_reader :is_hungry
  def initialize(name, rider, color, is_hungry = 4)
    @name = name
    @rider = rider
    @color = color
    @is_hungry = is_hungry
    if 
      is_hungry <= 0; puts "The Dragon is no longer hungry"
    else
      puts "The dragon is hungry"
    end
  end
    
  def eat
    eaten = @is_hungry -1
    return eaten
  end
end

dragon1 = Dragon.new("Norbert", "Garrett", "green")
# I was expecting the code below to modify the dragon1, but it seems that the line below wants to default to 4 again 
puts dragon1.eat
p dragon1.is_hungry
 

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
        puts true
      else
        puts false
      end
    @is_adult = is_adult
      if age >= 33
        puts true
      else
        puts false
      end
    end

  def celebrate_birthday
    new_birthday = @age +1
    return new_birthday
  end
end

p hobbit1 = Hobbit.new("Frodo", "adventurous", 32)
p hobbit1.celebrate_birthday
# I still can't figure out why this doesn't store as a new variable
puts hobbit1.is_adult



