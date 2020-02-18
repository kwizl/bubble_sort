def bubble_sort(arr)
  size = arr.length

  return arr if size == 1

  arr.each do
    (size - 1).times do |i|
      arr[i], arr[i + 1] = arr[i + 1], arr[i] if arr[i] > arr[i + 1]
    end
  end

  arr.to_a
end

def bubble_sort_by(arr)
  size = arr.length

  return arr if size == 1

  arr.each do
    (size - 1).times do |i|
      arr[i], arr[i + 1] = arr[i + 1], arr[i] if yield(arr[i], arr[i + 1]).positive?
    end
  end

  arr.to_a
end

test = [6, 4, 5, 3, 2]
print bubble_sort(test)
puts

print bubble_sort_by(%w[hi hello hey]) { |left, right| left.length - right.length }
puts
