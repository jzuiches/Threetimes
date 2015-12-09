class Person
  attr_accessor :first_name, :middle_name, :last_name
  def whole_name
    #uses the first_name accessor without invoking self
    #self is the reciever of bareword invocations
    n = self.first_name + " "
    n << "#{middle_name} " if self.middle_name
    n << self.last_name
  end

end

david = Person.new
david.first_name = "David"
david.last_name = "Black"
puts "David's whole name: #{david.whole_name}"
david.middle_name = "Alan"
puts "David's new whole name: #{david.whole_name}"
