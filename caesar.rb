def caesar_cipher(str, int)
	s = str.split('').map do |c|
		if /[A-Za-z]/.match(c)

			#After matching if c is a letter, we minus A or a
			#depending on if capitizaled, add the shift
			#insure it will be a letter when we A or a
			#by adding the remainder of 26 to either letter
			if /[A-Z]/.match(c)
				c = ((c.ord - 65 + int) %26+ 65).chr
			else /[a-z]/.match(c)
				c = ((c.ord - 97 + int) %26 + 97).chr 	
			end
		else
			c
		end
	end
	s.join('')
end

puts caesar_cipher("What a string!", 5)