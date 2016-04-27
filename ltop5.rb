#deaf grandma

while true
	puts "Say something to grandma:"
	message = gets.chomp
	
	if message == message.upcase
		puts "NO, NOT SINCE 1938!"
	elsif message == "bye"
		break
	else
		puts "HUH?! SPEAK UP, SONNY!"
	end
end
	


