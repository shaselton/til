require 'set'
def happy_number(number)
	history = Set.new
	result, history = calculate(number, history)
	result == 1
end

def calculate(result, set)
	if result == 1 || set.include?(result)
		return result, set
	else
		set.add(result)
		calculate(result.to_s.chars.map(&:to_i).inject(0){|result, num| result += num ** 2}, set)
	end
end
