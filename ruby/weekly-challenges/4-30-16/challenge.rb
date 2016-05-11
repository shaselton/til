# Description:
# Implement a function called makeAcronym that returns the first letters of each word in a passed in string.
# Make sure the letters returned are uppercase.

# If the value passed in is not a string return 'Not a string'
# If the value passed in is a string which contains only characters other than spaces and alphabet letters, return 'Not letters'

# EXAMPLES:
# 'Hello codewarrior' -> 'HC'
# '42' -> 'Not letters'
# 42 -> 'Not a string'
# [2,12] -> 'Not a string'
# {name: 'Abraham'} -> 'Not a string'

def makeAcronym(str)
  return 'Not a string' unless str.is_a? String
  return 'Not letters' if str.to_i.to_s == str

  str.split(' ').map(&:upcase).inject(''){ |acronym, word| acronym + word[0]}
end

puts makeAcronym('Hello codewarrior')
puts makeAcronym('42')
puts makeAcronym(42)
puts makeAcronym([2,12])
puts makeAcronym({name: 'Abraham'})