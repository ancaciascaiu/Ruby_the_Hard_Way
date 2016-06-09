
#Write a method that when passed an integer between 1 and 3000 returns a string containing the old roman numeral.

#puts "Please eneter a number that you want to convert to roman numeral:"
#number = gets.chomp

def old_roman number
	
	ro_nr = ""
	
	if number/1000 
		thous = "M" * (number/1000)
		ro_nr += thous
		number = number - (number.to_s[0].to_i*1000)
	end
	
	if number /100 > 0
		if number /100 ==4
			hun = "CD"
		elsif number/100 > 5
			hun = "D" + ("C" * (number/100-5))
		elsif number/100 == 5
			hun = "D" 
		else
			hun = "C" * (number/100)
		end
		ro_nr += hun
		number = number - (number.to_s[0].to_i*100)
	end
	
	if number/10 > 0
		if number/10 ==4
			tens = "XL"
		elsif number/10 > 5
			tens = "L" + ("X" * (number/10-5))
		elsif number/10 == 5
			tens = "L" 
		else
			tens = "X" * (number/10)
		end
		ro_nr += tens
		number = number - (number.to_s[0].to_i*10)
	end
	
	if number/1 > 0
		if number ==4
			ones = "IV"
		elsif number > 5
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


old_roman 9978
old_roman 5555
old_roman 3333
old_roman 234
old_roman 555
old_roman 789
old_roman 31
old_roman 55
old_roman 67
old_roman 3
old_roman 5
old_roman 7

old_roman 4444
	


