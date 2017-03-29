# frozen_string_literal: true
def sum(nums)
  nums.each.reduce do |num, sum|
    sum + num
  end
end

def avg(nums)
  sum(nums).to_f / nums.length
end

def max(nums)
  nums.each.reduce do |num, max|
    num > max ? num : max
  end
end

def min(nums)
  nums.each.reduce do |num, min|
    num < min ? num : min
  end
end

def swap(nums, i, j)
  nums[i], nums[j] = nums[j], nums[i]
end

def bubble_sort_asc(nums)
  (1..nums.length - 1).reverse_each do |i|
    (0...i).each do |j|
      swap(nums, j, j + 1) if nums[j] > nums[j + 1]
    end
  end
  nums
end

def bubble_sort_desc(nums)
  (1..nums.length - 1).reverse_each do |i|
    (0...i).each do |j|
      swap(nums, j, j + 1) if nums[j] < nums[j + 1]
    end
  end
  nums
end

def quick_sort_asc(nums)

end

def quick_sort_desc(nums)

end

p nums = [20, 31, 42, 13, 5, 38]
puts "合計: #{sum(nums)}"
puts "平均: #{avg(nums)}"
puts "最大値: #{max(nums)}"
puts "最小値: #{min(nums)}"
puts "小さい順(バブルソート): #{bubble_sort_asc(nums)}"
puts "大きい順(バブルソート): #{bubble_sort_desc(nums)}"
