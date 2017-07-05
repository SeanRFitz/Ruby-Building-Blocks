def redacted

	puts "Text to search through: "
	text = gets.chomp
	puts "Word to redact: "
	redact = gets.chomp

	redact = redact.split

	redact.each do |word|
		if text.include?(word)
			text.gsub!(word, "-----")
		end
	end

	puts text
end

redacted