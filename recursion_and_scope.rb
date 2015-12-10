class C
  def x(value_for_a, recurse=false)
    a = value_for_a
    print "Hers's the inspect-string for 'self':"
    puts self.object_id
    #self should be some object number
    puts "And here's a:"
    #a should be the value
    puts a.object_id
    if recurse
      #when recurse is set to true. Then x method calls itself but we give it a new value with the default value for recurse so that it only recuses once.
      puts "Calling myself (recusion)... "
      x("Second value for a")
      puts "Back after recursion; here's a:"
      puts a.object_id
    end
  end
end
c = C.new
c.x("First value for a", true)