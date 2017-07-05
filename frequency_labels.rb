# count frequency each word is used
# show "word frequency" using puts

puts "Enter a phrase: "
text = gets.chomp
text.downcase!
text.gsub!(/[.,!?]/,'')

words = text.split

frequency = Hash.new(0)

words.each do |word|
	frequency[word] += 1
end

frequency = frequency.sort_by {|key,value| value}
frequency.reverse!

frequency.each do |key,value|
	puts "#{key} #{value}"
end