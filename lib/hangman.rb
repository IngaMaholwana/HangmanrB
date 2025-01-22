class Hangman
  def initialize
    @chosen_word = nil
  end

  def guess_word
    words = File.readlines('google-10000-english-no-swears.txt', chomp: true)
    filtered_words = words.select { |word| word.length >= 3 }
    @chosen_word = filtered_words.sample
  end
  
  def get_word
    @chosen_word
  end


  def word_length
    @chosen_word.length
  end
end

