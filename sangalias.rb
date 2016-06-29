def name_swap(name)
  name.downcase
  name = name.split(" ")
  name.insert(0, name.delete_at(1))
  puts name
  name.join(" ")
end

def letter_swap(letter)
  vowel_cipher = {
    'a' => 'e',  
    'e' => 'i', 
    'i' => 'o', 
    'o' => 'u', 
    'u' => 'a'
  }
  if vowel_cipher.has_key?(letter)
    letter = vowel_cipher[letter]
  elsif letter == ' '
    letter = ' '
  elsif letter == 'z'
    letter = 'b'
  elsif letter == 'd' || letter == 'h' || letter == 'n' || letter == 't' 
    letter.next.next
  else
    letter.next  
  end
end

puts "Welcome to the Alias Management System"
puts "Please enter the first and last name you would like to change."
puts "Enter 'quit' when finished."

finished = false 
id_list = {}

until finished == true
  old_name = gets.chomp
  if old_name == "quit"
    puts "Thank you for using the Alias Management System.  Goodbye!"
    finished = true 
  else
    swap_name = name_swap(old_name)
    swap_name = swap_name.split("")
    swap_name.map! { |string| letter_swap(string) }
    swap_name = swap_name.join("")
    new_name = swap_name.split.map(&:capitalize).join(" ")
    puts new_name

    id_list[old_name] = new_name 

    puts "Please enter another name to be changed.  Enter 'quit' if finished."
  end
end

id_list.each { |old_name, new_name| puts "The secret identity of '#{old_name}' is '#{new_name}'" }