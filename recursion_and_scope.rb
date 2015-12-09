class C
  def x(value_for_a, recurse=false)
    a = value_for_a
    print "Hers's the inspect-string for 'self':"
    p self
    #self should be some object number
    puts "And here's a:"
    #a should be the value
    puts a
    if recurse
      #when recurse is set to true. Then x method calls itself but we give it a new value with the default value for recurse so that it only recuses once.
      puts "Calling myself (recusion)... "
      x("Second value for a")
      puts "Back after recursion; here's a:"
      puts a
    end
  end
end
c = C.new
c.x("First value for a", true)