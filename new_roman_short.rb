def convert_to_roman(arabic_number)
  conversion = ""

  # thousands
  conversion += "M" * (arabic_number/1000)

  # nine hundreds
  conversion += "CM" * (arabic_number%1000/900)
  # five hundreds
  conversion += "D" * (arabic_number%1000%900/500)
  # four hundreds
  conversion += "CD" * (arabic_number%1000%900%500/400)
  # hundreds <500
  conversion += "C" * (arabic_number%1000%900%500%400/100)

  # nineties
  conversion += "XC" * (arabic_number%100/90)
  # fifties
  conversion += "L" * (arabic_number%100%90/50)
  # forties
  conversion += "XL" * (arabic_number%100%90%50/40)
  # tens
  conversion += "X" * (arabic_number%100%90%50%40/10)

  # nines
  conversion += "IX" * (arabic_number%10/9)
  # fives
  conversion += "V" * (arabic_number%10%9/5)
  # fours
  conversion += "IV" * (arabic_number%10%9%5/4)
  # units
  conversion += "I" * (arabic_number%10%9%5%4/1)

  return conversion
end


p convert_to_roman(2914)
p convert_to_roman(1459)
p convert_to_roman(3541)
p convert_to_roman(4295)