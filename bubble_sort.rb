def bubble_sort(arr)
  size = arr.length

  return arr if size == 1

  arr.each do
    (size - 1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
      end
    end
  end
  print arr.to_a
  puts
end

def bubble_sort_by(arr)
  size = arr.length

  return arr if size == 1

  arr.each do
    (size - 1).times do |i|
      if yield(arr[i], arr[i + 1]).positive?
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
      end
    end
  end

  print arr.to_a
  puts
end

test = [6, 4, 5, 3, 2]
bubble_sort(test)

bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end
