#!/usr/bin/env ruby

# Public: Compute the sum of cubes for a given Range.
#
# a - An Integer that is a lower bound of a Range.
# b - An Integer that is an upper bound of a Range.
#
# Examples
#
#   sum_of_cubes(1, 3)
#   # => 36
#
# Returns the sum of cubes for a given Range a through b.
def sum_of_cubes(a, b)
  (a..b).reduce(0) { |sum, num| sum += num**3 }
end
