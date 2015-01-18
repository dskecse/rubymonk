#!/usr/bin/env ruby

# Public: Calculate all the unique permutations of the digits of an Integer.
#
# number - The Integer for which permutations to be yielded.
#
# Examples
#
#   number_shuffle(123)
#   # => [123, 132, 213, 231, 312, 321]
#
# Returns unique permutations of the digits of an Integer.
def number_shuffle(number)
  digits = Integer(number).to_s.each_char.to_a

  combinations = []
  while combinations.uniq.size != number_of_combinations(digits.size) do
    combinations << digits.shuffle.join.to_i
  end
  combinations.uniq.sort
end

def number_of_combinations(number)
  factorial_of(number, 1)
end

def factorial_of(n, acc)
  n <= 1 ? acc : factorial_of(n - 1, n * acc)
end
