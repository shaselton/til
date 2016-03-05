require 'set'
def happy_number(number)
	history = Set.new
	result = number.to_s.chars.map(&:to_i).inject(0){|result, num| result += num ** 2}
	loop do
		if result == 1 || history.include?(result)
			break
		end
		history.add(result)
		result = result.to_s.chars.map(&:to_i).inject(0){|result, num| result += num ** 2}
	end
	result == 1
end
