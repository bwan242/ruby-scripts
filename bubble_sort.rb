# frozen_string_literal: true

require 'pry-byebug'

def bubble_sort(array)
  # right_idx: the border between the non-sorted
  # and sorted portion of the array
  right_idx = array.length - 1

  while right_idx > 1
    i = 0

    while i < right_idx
      # If the left value is greater than the right, swap the values
      swap(array, i, i + 1) if array[i] > array[i + 1]

      i += 1
    end

    right_idx -= 1
  end

  array
end

def swap(array, idx1, idx2)
  array[idx1], array[idx2] = array[idx2], array[idx1]
end

array = [4, 3, 78, 2, 0, 2]
p bubble_sort(array)
