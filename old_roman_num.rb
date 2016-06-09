
#Write a method that when passed an integer between 1 and 3000 returns a string containing the old roman numeral.

#puts "Please eneter a number that you want to convert to roman numeral:"
#number = gets.chomp

def old_roman number
	
	if number.to_s.length == 4
		thous = "M" * (number/1000)
		return thous
	
	

end

old_roman 1