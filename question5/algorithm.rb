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

def sort_asc(nums)

end

def sort_desc(nums)

end

p nums = [20, 31, 42, 13, 5, 38]
puts "合計: #{sum(nums)}"
puts "平均: #{avg(nums)}"
puts "最大値: #{max(nums)}"
puts "最小値: #{min(nums)}"
