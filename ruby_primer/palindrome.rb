#!/usr/bin/env ruby

# Public: Check whether a String is a palindrome.
#
# sentence - A String to be checked.
#
# Example
#
#   palindrome?('Never odd or even')
#   # => true
#
# Returns true if a String is a palindrome, false otherwise.
def palindrome?(sentence)
  downcased_sentence = sentence.gsub(/\s/, '').downcase
  downcased_sentence == downcased_sentence.reverse
end
