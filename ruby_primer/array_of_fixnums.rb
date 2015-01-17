#!/usr/bin/env ruby

# Public: Checks if all elements in an Array are Fixnum.
#
# array - The Array of elements to be checked.
#
# Examples
#
#   array_of_fixnums?([999, 100500])
#   # => true
#
# Returns true if all the elements are of class Fixnum, false otherwise.
def array_of_fixnums?(array)
  array.all? { |elem| elem.is_a?(Fixnum) }
end
