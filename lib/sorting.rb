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

  def self.merge_sort(arr)
    merge_sort_starter(arr, 0, arr.length)
  end

  private

  def self.merge_sort_starter(arr, i, j)
    return if i >= j

    q = ((i + j) / 2.0).floor
    merge_sort_starter(arr, i, q)
    merge_sort_starter(arr, q + 1, j)
    merge_sort_helper(arr, i, q, j)
    arr
  end

  private

  def self.merge_sort_helper(arr, i, j, k)
    puts "#{arr.length}, #{i}, #{j}, #{k}"
    length_first_part = j - i
    length_second_part = k - j
    arr_1 = arr.slice(i, length_first_part)
    arr_2 = arr.slice(j, length_second_part)
    p = 0
    q = 0
    r = i
    while p < length_first_part && q < length_second_part
      if arr_1[i] < arr_2[q]
        arr[r] = arr_1[p]
        p += 1
      else
        arr[r] = arr_2[q]
        q += 1
      end
      r += 1
    end
    while p < length_first_part
      arr[r] = arr_1[p]
      p += 1
      r += 1
    end
    while q < length_second_part
      arr[r] = arr_2[q]
      q += 1
      r += 1
    end
    puts(arr)
    arr
  end
end
