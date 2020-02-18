def bubble_sort(arr)
  size = arr.length

  return arr if size == 1

  loop do
    state = false
    (size - 1).times do |i|
      if arr[i] > arr[i + 1]
        state = true
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
      end
    end
    break unless state
  end
  print arr.to_a
  puts
end

def bubble_sort_by(arr)
  size = arr.length

  return arr if size == 1

  for i in 0 .. (size - 1)
    for k in 1 .. size - i - 1
      if yield(arr[k - 1], arr[k]) > 0
        arr[k - 1], arr[k] = arr[k], arr[k - 1]
      end
    end
  end
  print arr.to_a
  puts
end

bubble_sort_by([12, 2, 1]) do |left, right|
  left - right
end

bubble_sort_by(["c", "a", "b"]) do |left, right|
  left[0].ord - right[0].ord
end

bubble_sort_by(["sada", "sacaa", "sad"]) do |left, right|
  left.length - right.length
end

test = [6, 4, 5, 3, 2]
bubble_sort(test)