def caesar_cipher(string,num)
	encrypted = []
	alphabet_lower = [*('a'..'z')]
	alphabet_upper = [*('A'..'Z')]
	i = 0
	while i < string.length
		if alphabet_lower.include? string[i]
			encrypted << alphabet_lower[(alphabet_lower.index(string[i])+num)%26]
			i += 1
		elsif alphabet_upper.include? string[i]
			encrypted << alphabet_upper[(alphabet_upper.index(string[i])+num)%26]
			i += 1
		else
			encrypted << string[i]
			i += 1
		end
	end
	puts encrypted.join
end

caesar_cipher("What a string!",5)