def guess_word
  words = File.readlines('google-10000-english-no-swears.txt', chomp: true)
  filtered_words = words.select { |word| word.length >= 3 }
  chosen_word = filtered_words.sample
  
  # puts chosen_word
end

