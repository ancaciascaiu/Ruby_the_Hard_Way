puts "What is your first name?"
firstname = gets.chomp
puts "What is your middle name? (if no middle name, press enter)"
middlename = gets.chomp
puts "What is your last name?"
lastname = gets.chomp

name = firstname.delete(' ') + middlename.delete(' ') + lastname.delete(' ')
puts "Did you know there are " + name.length.to_s + " characters"
puts "in your name, " + firstname.strip + " " + middlename.strip + " " + lastname.strip + "?"