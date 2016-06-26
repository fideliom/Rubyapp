def special(char)
	return [' ', ' ?', '!', '&', '#', '%', '@', '$'].include? char
end

def ceasar(string, key)
	key = key % 26
	str = ''
	string.each_char do |c|
		if (special(c) == false)
		key.times do 
			c.next!
		end
		if (c.length > 1)
		c = c[-1]
		end
		end
		str += c
	end
	return str
end

def encrypt
puts "Please enter your text:"
text = gets.chomp
puts "Please enter your key:"
key = gets.chomp.to_i
puts "Your text encrypted with the ceasar cypher:"
puts "Using the key #{key} :"
puts ceasar(text, key)
end

encrypt