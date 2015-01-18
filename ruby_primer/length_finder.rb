#!/usr/bin/env ruby

# Public: Find the length of Strings in an Array.
#
# input_array - An Array of Strings to be calculated.
#
# Examples
#
#   length_finder(['Ruby', 'Rails', 'Rack'])
#   # => [4, 5, 4]
#
# Returns an Array containing the length of input Strings.
def length_finder(input_array)
  input_array.map(&:length)
end
