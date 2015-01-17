#!/usr/bin/env ruby

# Public: Measure the time taken to execute the code.
#
# proc - The Proc object to be executed.
#
# Examples
#
#   exec_time proc { 10_000_000 / 5 }
#   # => 2.0e-06
#
# Returns Float number of seconds taken to execute the code.
def exec_time(proc)
  start_time = Time.now
  proc.call
  Time.now - start_time
end
