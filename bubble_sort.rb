def bubble_sort(arr)

  size = arr.length

  if (size == 1)

    return arr

  else
    loop do
      state = false  
      (size-1).times do |i|
        if arr[i] > arr[i+1]
          arr[i], arr[i+1] = arr[i+1], arr[i]
          state = true
        end
      end
      break if not state 
    end

    arr
  end

  print arr.to_a
  puts
end

test = [6, 4, 5, 3, 2]
bubble_sort(test)