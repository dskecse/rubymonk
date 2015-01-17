#!/usr/bin/env ruby

# Public: Find whether a given number is a Kaprekar number.
#
# k - The Integer number to be checked.
#
# Examples
#
#   kaprekar?(297)
#   # => true
#
# Returns true if the Integer is a Kaprekar number, false otherwise.
def kaprekar?(k)
  return false if !k.is_a?(Integer) || k < 1

  n = k.to_s.length
  k_squared = (k**2).to_s

  first_part  = k_squared.length.even? ? k_squared[0..(n - 1)] : k_squared[0..(n - 2)]
  second_part = k_squared[-n..-1]

  first_part.to_i + second_part.to_i == k
end
