
#Write a method that when passed an integer between 1 and 3000 returns a string containing the old roman numeral.

#puts "Please eneter a number that you want to convert to roman numeral:"
#number = gets.chomp

def old_roman number
	
	if number.to_s.length == 4
		thous = "M" * (number/1000)
		return thous
	
	elsif number.to_s.length == 3
		if number/100 > 5
			hun = "D" + ("C" * (number/100-5))
		elsif number/100 == 5
			hun = "D" 
		else
			hun = "C" * (number/100)
		end
		return hun
		
	elsif number.to_s.length == 2
		if number/10 > 5
			tens = "L" + ("X" * (number/10-5))
		elsif number/10 == 5
			tens = "L" 
		else
			tens = "X" * (number/10)
		end
		return tens
		
	elsif number.to_s.length == 1
		if number > 5
			ones = "V" + ("I" * (number-5))
		elsif number == 5
			ones = "V" 
		else
			ones = "I" * number
		end
		return ones
		
	end
	#return thous.to_s + hun.to_s + tens.to_s + ones.to_s
	

end

old_roman 1