require_relative "stacklike"
class Suitcase
include Stacklike
end

class CargoHold
  include Stacklike

def load_and_report(suitcase)
  add_to_stack(suitcase)
  puts suitcase.object_id
end

def unload
  take_from_stack
end

end

ch = CargoHold.new
sc1 = Suitcase.new
sc2 = Suitcase.new
sc3 = Suitcase.new
ch.load_and_report(sc1)
ch.load_and_report(sc2)
ch.load_and_report(sc3)
first_unloaded = ch.unload
puts "The first suitcase is: "
puts first_unloaded.object_id
# the difference between prepend and include is that r[prepend will cause the object to look in the modelue first before it looks in its own class for the method.