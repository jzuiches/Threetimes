module M
  def report
    puts "'report' method in module M"
    super
  end
end

class C
  prepend M

  def report
    puts "'report' method in class C"
    puts "About to trigger the next higher-up report method.."
    sleep 1.0
    super
    puts "Back from the 'super' call"
  end
end
c = C.new
c.report