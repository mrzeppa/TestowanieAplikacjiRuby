class Anagram
    def initialize word
      @word = word.downcase
    end
    
    def match words
      words.select{|match| match.downcase.chars.sort.join == @word.chars.sort.join && match.downcase != @word}
    end
  end