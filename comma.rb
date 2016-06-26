#write a method which takes an integer as its input and returns 
#a comma-separated integer as a string.

#ask for input
#iterate through all characters of the string
	#iterate 3 times
	#add o comma
	#repeat
#print result

puts "Enter a number"
input = gets.chomp
def separator(input)
	output = ""
	if input.length < 4
		output = input
	elsif input.length >= 4  #&& input <= 6
		
		(input.length-1).downto(0) do |i|
			
			puts input[i] +","+ input[i..i+2]
			output += input[i]
		end
		output = output.reverse
	end	
return output
	#elsif input >=7 && input <=8
end
puts separator(input)