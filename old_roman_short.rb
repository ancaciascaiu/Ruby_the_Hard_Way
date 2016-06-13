def old_roman number
	ro_nr = ""

	ro_nr += "M" * (number/1000)
	ro_nr += "D" * (number % 1000 /500)
	ro_nr += "C" * (number % 500 /100)
	ro_nr += "L" * (number % 100 /50)
	ro_nr += "X" * (number % 50 /10)
	ro_nr += "V" * (number % 10 /5)
	ro_nr += "I" * (number % 5 /1)
	ro_nr
end

old_roman 1999