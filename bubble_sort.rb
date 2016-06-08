list = [55, 2, 444, 95, 112, 1, 347, 98, 34, 434, 121, 467, 13, 226]

def bubble_sort(list)
  return list if list.size <= 1 
  swapped = true
  while swapped do
    swapped = false
    0.upto(list.size-2) do |i|
      if list[i] > list[i+1]
        list[i], list[i+1] = list[i+1], list[i] # swap values
        swapped = true
      end
    end    
  end

  list
end