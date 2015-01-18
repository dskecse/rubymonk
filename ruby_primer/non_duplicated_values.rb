#!/usr/bin/env ruby

# Public: Find non-duplicated values in an Array.
#
# values - The Array of values to be iterated over.
#
# Examples
#
#   non_duplicated_values([1,2,2,3,3,4,5])
#   # => [1, 4, 5]
#
# Returns the new Array of non-duplicated values.
def non_duplicated_values(values)
  values.select { |value| values.count(value) == 1 }
end
