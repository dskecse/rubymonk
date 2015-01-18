#!/usr/bin/env ruby

# Public: Sort the words in a given sentense.
#
# string - A String to be sorted.
#
# Examples
#
#   sort_string('Awesome I am')
#   # => "I am Awesome"
#
# Returns the given String sorted in ascending order by length.
def sort_string(string)
  string.split.sort { |x, y| x.length <=> y.length }.join(' ')
end
