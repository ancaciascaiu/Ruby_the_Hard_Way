#real deaf grandma

while true
	puts "Say something to grandma:"
	message = gets.chomp
	
	if message == message.upcase
		puts "NO, NOT SINCE 1938!"
	elsif message == "bye"
		2.times do
			puts "What are you saying?"
			gets.chomp
		end
		puts "Ok, I hear you! You don`t love granny anymore. Alright, you can go!"
		break
	else
		puts "HUH?! SPEAK UP, SONNY!"
	end
end
	

