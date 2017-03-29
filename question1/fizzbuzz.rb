puts '数字を入力してください'
count = gets.to_i

(1...count).each do |num|
  if (num % 3).zero? && (num % 5).zero?
    print 'FizzBuzz'
  elsif (num % 3).zero?
    print 'Fizz'
  elsif (num % 5).zero?
    print 'Buzz'
  else
    print num
  end
  print ', '
end
