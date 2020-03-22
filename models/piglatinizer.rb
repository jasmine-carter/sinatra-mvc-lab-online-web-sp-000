require 'pry'
class PigLatinizer
  attr_accessor :text, :word_count

  #it needs recognize the first n consonants of a word
  #it needs to put those n consonants at the end of the word they belong to
  #it needs to add "ay" to the end of that word
  #it needs to evaluate if the word starts with a vowel
  #if word starts with a vowel, add "way" to the end of the word

  def piglatinize(text)
    @text = text.downcase.split
    @word_count = @text.count
    translate(text)
  end

  def split_sentence
    @text = text.split(" ")
    @word_count = text.count
  end

  def vowel
    vowels = ["a", "e", "i", "o", "u"]
    if vowels.include?(text[0])
      true
    end
  end

  #method that determines if 1 or more words
  def translate
    if text.count = 1
      text.single_word
    else
      text.multiple_words
    end
  end


  #translates a single word
  def single_word
    vowels = ["a", "e", "i", "o", "u"]
    @text = @text.join("")
    if vowels.include?(text[0])
      text << "way"
    else
      text = text.split("")
      text.each do |letter|
        if vowels.include?(letter)
          text << "ay"
          break
        else
          text << letter
          binding.pry
          letter.delete_at[0]
        end
      end
    end
  end


end
