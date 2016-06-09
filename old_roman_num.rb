#Write a method that when passed an integer between 1 and 3000 returns a string containing the old roman numeral.

#puts "Please eneter a number that you want to convert to roman numeral:"
#number = gets.chomp

def old_roman number
	
	ro_nr = ""
	
	if number/1000
		thous = "M" * (number/1000)
		ro_nr += thous
	end
	
	number = number - (number.to_s[0].to_i*1000)
	
	if number /100
		if number/100 > 5
			hun = "D" + ("C" * (number/100-5))
		elsif number/100 == 5
			hun = "D" 
		else
			hun = "C" * (number/100)
		end
		ro_nr += hun
	end
	
	number = number - (number.to_s[0].to_i*100)
	
	if number/10
		if number/10 > 5
			tens = "L" + ("X" * (number/10-5))
		elsif number/10 == 5
			tens = "L" 
		else
			tens = "X" * (number/10)
		end
		ro_nr += tens
	end
	
	number = number - (number.to_s[0].to_i*10)
	
	if number/1
		if number > 5
			ones = "V" + ("I" * (number-5))
		elsif number == 5
			ones = "V" 
		else
			ones = "I" * number
		end
		ro_nr += ones
	end
	
	return ro_nr

end

old_roman 2864
old_roman 9978
old_roman 5555
old_roman 3333
old_roman 234
	


