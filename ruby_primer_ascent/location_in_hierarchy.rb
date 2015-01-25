#!/usr/bin/env ruby

# Public: Find the first superclass of a given object starting with BasicObject
# that defines a given method.
#
# object - The Object whose superclass that defines the given method is to be
#          found in the inheritance chain.
# method - The Symbol method to be found among superclasses of the object.
#
# Examples
#
#   location_in_hierarchy(1, :between?)
#   # => Numeric
#
#   location_in_hierarchy('a string', :to_s)
#   # => Object
#
#   location_in_hierarchy(lambda {}, :call)
#   # => Proc
#
# Returns the Class name of the first superclass that defines the given method.
def location_in_hierarchy(object, method)
  klass = object.class
  ancestors = [klass] # use of `Class#ancestors` is not allowed

  while !(superclass = klass.superclass).nil?
    ancestors << superclass
    klass = superclass
  end

  ancestors.reverse.find do |ancestor|
    ancestor.instance_methods.include?(method)
  end
end
