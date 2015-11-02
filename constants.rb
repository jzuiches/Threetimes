class Ticket
  VENUES = ["Convention Center", "Fairgrounds" , "Town Hall"]

  def initialize(venue, date)
    if VENUES.include? (venue)
      @venue = venue
    else
      raise ArgumentError, "Unknown venue #{venue}"
    end
    @date = date
  end
  def venue
    @venue
  end
  def date
    @date
  end
  def price=(amount)
    @price = amount
  end
  def price
    @price
  end



end


ticket = Ticket.new("Fairgrounds", "10/31/15")

ticket.price(2)
p ticket.price
puts "The tick costs $#{"%.2f" % ticket.price}."
