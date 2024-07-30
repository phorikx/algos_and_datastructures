# frozen_string_literal: true

class Sorting
  def self.insertion_sort(arr)
    (1..arr.length - 1).each do |j|
      key = arr[j]
      i = j - 1
      while i >= 0 && arr[i] > key
        arr[i + 1] = arr[i]
        i -= 1
      end
      arr[i + 1] = key
    end
    arr
  end
end
