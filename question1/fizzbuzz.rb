puts '数字を入力してください'
count = gets.to_i

output = (1...count).each_with_object([]) do |num, arr|
  if (num % 3).zero? && (num % 5).zero?
    arr << 'FizzBuzz'
  elsif (num % 3).zero?
    arr << 'Fizz'
  elsif (num % 5).zero?
    arr << 'Buzz'
  else
    arr << num
  end
end
puts output.join(', ')
