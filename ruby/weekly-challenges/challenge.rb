#!/usr/bin/env ruby
#
#
a = ARGV[0].split(',')
b = a.each_with_object({even: {}, invalid: []}).with_index do |(element, dictionary), index|
  if index % 2 == 0 && dictionary[:even][element].nil? && !dictionary[:invalid].include?(element)
    dictionary[:even][element] = index
  elsif index % 2 == 1 
    dictionary[:even].delete(element) if dictionary[:even][element]
    dictionary[:invalid] << element if !dictionary[:invalid].include?(element)
  end    
end
key, value = b[:even].first
puts "value #{key} was found at index #{value}" if key
