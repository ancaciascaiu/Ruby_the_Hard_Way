# 1. Write a method that adds
#    two strings together.

# 2. Count up to 20, printing each
#    number and whether it is even
#    or odd.

# 3. Write a method that asks the user
#    for their age, then says their age
#    ain't nothing but a number.
#    example: User enters "46"
#    output: "46 ain't nothing but a number!"


#1
def adstr(a, b)
    puts a + b
end
adstr("Anca", "Silviu")

#2
count = 0
while count<20
    count+=1
    if count.even?
        puts "#{count} Even"
    else
        puts "#{count} Odd"
    end
end


#3
def age()
    puts "What`s your age?"
    hisage=gets.chomp
    puts "#{hisage}  ain`t nothing but a number!"
end
age()