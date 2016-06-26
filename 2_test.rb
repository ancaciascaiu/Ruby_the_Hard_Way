# Assignment 3: The Mega-Complimentizer

# Ask the user if they're in a good mood.

# If they aren't, keep telling them
# that they're fabulous, and then asking
# again if they're in a good mood.

# When the user finally answers "y",
# say "I knew I could cheer you up!"

q="Are u in a good mood? (y/n)"
puts q

a=gets.chomp

if a == "y"
    puts "I knew i could cheer you up"
elsif a == "n"
    while a =="n"
        puts q
        a = gets.chomp
    end
end
    