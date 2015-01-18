#!/usr/bin/env ruby

# Public: Find the frequency of a String in a sentence.
#
# sentence - A String containing multiple words.
# word     - A String that consists of one word.
#
# Examples
#
#   find_frequency('Do or do not... there is no try.', 'do')
#   # => 2
#
# Returns the frequency of a given word in the sentence (comparison is case-
# insensitive).
def find_frequency(sentence, word)
  sentence.downcase.split.count(word.downcase)
end
