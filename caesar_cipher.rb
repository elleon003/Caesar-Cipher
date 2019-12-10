def caesar_cipher(phrase, key)
	deciphered = ""
	phrase.each_char do |char|
		if char.ord >= 65 && char.ord <= 90
			deciphered += (((char.ord + key - 65) % 26) + 65).chr
		elsif char.ord >= 97 && char.ord <= 122
			deciphered += (((char.ord + key - 97) % 26) + 97).chr
		else
			deciphered += char
		end
	end
	puts deciphered
end	
caesar_cipher("What a string!", 5)
# Should return "Bmfy f xywnsl!"
# Upper case = 65 - 90
# Lower case = 97 - 122