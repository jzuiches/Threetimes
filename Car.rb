class Car
  @@registered_make = []
  @@cars = {}
  @@total_count = 0
  def self.total_count
    @@total_count
  end

  def self.add_make(make)
    unless @@registered_make.include?(make)
    @@registered_make << make
    @@cars[make] = 0
    end
  end
  attr_reader :make
  def initialize (make)
    if @@registered_make.include?(make)
      puts "Creating a new #{make}"
      @make = make
      @@cars[make] += 1
      @@total_count += 1
    else
      puts "We don't know how to make that!"
    end
  end
  def make_mates
    p @@cars
    #this is a hash of the make and how many of that make
    p self
    #this is the car object that is making this method call and it has the instance variable @make
    p self.make
    #this is the call to that instance variable on that object
    @@cars[self.make]

  end

end




Car.add_make("Honda")
Car.add_make("Ford")
h = Car.new("Honda")
f = Car.new("Ford")
h2 = Car.new("Honda")

puts "There are #{h2.make_mates} #{h2.make}'s"
puts "there are #{Car.total_count}"

x = Car.new("Brand x")