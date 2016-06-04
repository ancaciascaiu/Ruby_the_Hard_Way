#My first code in Ruby

question = "How would you like to be greeted?"
puts question
answer= gets.chomp

# If they say "in French", respond
# with "Bonjour!"
if answer == "in French"
    puts "Bonjour!"
# If they say "in Spanish", respond
# with "Hola!"
elsif answer == "in Spanish"
    puts "Hola!"
# If they say "in Afrikaans", respond
# with "Hallo!"
elsif answer == "in Afrikaans"
    puts "Hallo!"
# Handle all other input with "Uh, hi?"
else
    puts "Uh, hi?"
end