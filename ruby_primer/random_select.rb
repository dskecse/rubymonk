#!/usr/bin/env ruby

# Public: Select random elements from an Array.
#
# array - An Array of elements.
# n     - A Fixnum number of elements to select.
#
# Examples
#
#   random_select([1, 2, 3, 4, 5], 2)
#   # => [3, 1]
#
#   random_select([1, 2, 3, 4, 5], 2)
#   # => [4, 4]
#
# Returns an Array of randomly selected elements.
def random_select(array, n)
  [].tap do |result|
    n.times { result << array[rand(array.size)] }
  end
end
