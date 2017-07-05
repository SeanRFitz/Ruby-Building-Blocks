# Takes a string as the first argument and an array as a second argument
# Returns a hash that lists each string from the array that appears in 
# the original string and its frequency
#

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(str, dict)
	answer_hash = Hash.new(0)

	dict.each do |word|
			answer_hash[word] = str.downcase.scan(/#{word}/).count
	end
	return answer_hash
end

a = substrings("Howdy partner, sit down! How's it going?", dictionary)
puts a