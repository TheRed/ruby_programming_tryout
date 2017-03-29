# frozen_string_literal: true
puts '数字を入力してください'
count = gets.to_i

output = (1...count).each_with_object([]) do |num, arr|
  arr << if (num % 15).zero?
           'Fizz Buzz'
         elsif (num % 3).zero?
           'Fizz'
         elsif (num % 5).zero?
           'Buzz'
         else
           num
         end
end
puts output.join(', ')
