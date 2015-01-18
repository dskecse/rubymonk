class Restaurant
  # Public: Initialize a Restaurant.
  #
  # menu - A Hash containing the menu.
  #
  # Examples
  #
  #   Restaurant.new(rice: 3, noodles: 2)
  #   # => #<Restaurant:0x007fbea49b36f0 @menu={:rice=>3, :noodles=>2}>
  def initialize(menu)
    @menu = menu
  end

  # Public: Compute the costs based on the menu.
  #
  # orders - Zero or more Hash orders for which costs are to be calculated.
  #
  # Examples
  #
  #   cost({ rice: 1, noodles: 1 }, { rice: 2, noodles: 2 })
  #   # => 15
  #
  # Returns 0 if no orders given, otherwise Fixnum or Float number of the cost
  # of the given orders.
  def cost(*orders)
    orders.reduce(0) do |total_cost, order|
      order.keys.reduce(0) do |cost, dish|
        cost + order[dish] * @menu[dish]
      end + total_cost
    end
  end
end
