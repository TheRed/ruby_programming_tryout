# frozen_string_literal: true
def recursion(num)
  return 1 if num == 1
  num + recursion(num - 1)
end

num = gets.to_i
puts recursion(num) if num.positive?
