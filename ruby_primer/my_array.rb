class MyArray
  attr_reader :array

  # Public: Initialize a MyArray.
  #
  # array - An Array to initialize MyArray with.
  #
  # Examples
  #
  #   MyArray.new([1, 2, 3])
  #   # => #<MyArray:0x007fc3cab8aef8 @array=[1, 2, 3]>
  def initialize(array)
    @array = array
  end

  # Public: Calculate the sum of Array elements.
  #
  # initial_value - An optional Integer to start calculation with.
  # block         - An optional block that can be used to manipulate Array
  #                 elements before calculating a sum.
  #
  # Examples
  #
  #   sum
  #   # => 6
  #
  #   sum(10)
  #   # => 16
  #
  #   sum(0) { |n| n**2 }
  #   # => 14
  #
  # Returns the sum of Array elements that may have been manipulated by using
  # an optional block.
  def sum(initial_value = 0)
    return @array.reduce(initial_value, :+) unless block_given?

    sum = initial_value
    @array.each { |value| sum += yield(value) }
    sum
  end
end
