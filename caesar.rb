#Caesar Cipher

def caesar_cipher(str, shift)
	new_str = str.split(//) 												#create array with all chars 
	output = Array.new
	new_str.each do |character| 									#iterate over chars to find alpha chars for shift
		if character.match(/\w/)
			shifted_ordinal = character.ord						#convert letters to corresponding numbers ["A".."Z"] == [65..90] , ["a".."z"] ==[97..122]
			if (shifted_ordinal.between?(91-shift,90)) || 
			   (shifted_ordinal.between?(123-shift,122))		#account for alphabet wrap, keeping same case
				shifted_ordinal -= (26-shift)
			else
				shifted_ordinal += shift								#shift
			end
			shifted_char = shifted_ordinal.chr					#convert back to alpha
			output << shifted_char
		else																	#if special char or number, char is pushed to output array
			output << character
		end
	end
	puts output.join 														#join array to print shifted string
end
	
caesar_cipher("What a string!", 5)								# per Odin Project requirements, output: "Bmfy f xywnsl!"

caesar_cipher("abcdefghijklmnopqrstuvwxyz",5)

caesar_cipher("Mixed Case RotThirteen", 13)

caesar_cipher("ABCDEFGHIJKLMNOPQRSTUVWXYZ",13) 

