
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
		
	

end

old_roman 1