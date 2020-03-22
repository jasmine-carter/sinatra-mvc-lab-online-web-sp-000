require 'pry'
class PigLatinizer
  attr_accessor :text, :word_count

  #it needs recognize the first n consonants of a word
  #it needs to put those n consonants at the end of the word they belong to
  #it needs to add "ay" to the end of that word
  #it needs to evaluate if the word starts with a vowel
  #if word starts with a vowel, add "way" to the end of the word
	def piglatinize(input)
		#splits the input to capture multiple words
		if input.split(" ").length == 1
			piglatinize_single_word(input)
		else piglatinize_sentence(input)
    end
	end


	def piglatinize_single_word(word)
		vowels = ["a", "e", "i", "o", "u"]
		if vowels.include?(word.downcase[0])
			word = word << "w"
		elsif !vowels.include?(word.downcase[0]) && !vowels.include?(word.downcase[1]) && !vowels.include?(word.downcase[2])
			word = word.split("").rotate(3).join
		elsif !vowels.include?(word.downcase[0]) && !vowels.include?(word.downcase[1])
			word = word.split("").rotate(2).join
		elsif !vowels.include?(word.downcase[0])
			word = word.split("").rotate(1).join
		end
		word << "ay"

	end

end
