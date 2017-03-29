# frozen_string_literal: true
words = gets.chomp.split
words_count = words.each_with_object({}) do |word, hash|
  hash[word] = hash.fetch(word, 0) + 1
end
puts words_count
