class C
  puts "Just inside class definition block. Here's self:"
  p self
  @v = "I am an instance variable at the top level of a class body."
  puts "And here's the instance variable @v, belongin to #{self}"
  p @v
  def show_var
    @v = "HI!!"
    puts "Inside an stance method definition block. Here's self:"
    p self
    puts "And here's the global variable $:"
    $LOAD_PATH.each do |path|
      puts path
    end


  end

  def show_again
    puts "this is also @v, belonging to that same object #{self}"
    p @v
  end

end
c = C.new
c.show_var
c.show_again