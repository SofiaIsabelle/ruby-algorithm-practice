require 'prime'

prime_array = Prime.take_while{|p| p < 2_000_000} #take while it's under 2 million

p prime_array


total_count = prime_array.inject { |sum, x| sum + x }

p total_count

#142913828922