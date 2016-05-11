#!/usr/bin/env ruby

# ruby challenge.rb 'abab' 'hello hi hello hi' == true
# ruby challenge.rb 'abab' 'hello hi hello ' == false
# ruby challenge.rb 'abab' 'hello hi hello d' == false
# ruby challenge.rb 'abcd' 'hello hi hello hello' == false
# ruby challenge.rb 'abcd' 'hello hi hellod helsalo' == true

pattern = ARGV[0]
string = ARGV[1]
def word_pattern(pattern, string)
	string_dictionary = []
	string_array = string.split(' ')
	pattern_array = pattern.split('')
	
	return false unless pattern_array.size == string_array.size

	pattern_array.each_with_object({}).with_index do |(pattern_item, pattern_dictionary), index|
		if pattern_dictionary[pattern_item]
			return false unless pattern_dictionary[pattern_item] == string_array[index]
		else
			return false if string_dictionary.include?(string_array[index])
			pattern_dictionary[pattern_item] = string_array[index]
			string_dictionary << string_array[index]
		end
	end

	return true
end

puts word_pattern(pattern, string)
