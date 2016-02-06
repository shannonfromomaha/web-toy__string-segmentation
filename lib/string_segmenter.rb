require_relative 'dictionary'
class StrSegmenter
  #segment_string FINDS VALID WORDS IN STRING
  #
  #str-the String of words to segment
  #
  #Example: "catdogsyarn" => ["cat", "dogs", "yarn"] 
  #
  #=> an Array of words found in the dictionary (without remainders)
  
  def segment_string(str)
  characters = str.to_s.split("") #splits string into characters
  words = [] #builds a bank for words
  while characters.any? #until you have no more chars to consider
    leftovers,possible_words = find_words(words,characters)#chk WHOLE str
    characters = leftovers #probably there's leftovers tho
    if leftovers.any? #i mean it's just the most likely scenario
      new_word, leftovers = leftovers_test(possible_words[-1],leftovers)#chk LAST word to see if it is actually a LONGER word
      if new_word != nil #STOP REPLACING WITH NOTHING
        possible_words[-1] = new_word #replace short with longer, better word
      end
    end
  end
  return possible_words #=>THE ANSWER!
  end
  
  #find_words defines words in an as yet unsorted string
  #
  #words: an Array pulled words, characters: an Array of unsorted chars
  #
  #=> leftover characters that didn't fit into words, words it found
  def find_words(words, characters)
  char_evaluation = [] #array stores chars until established in dictionary
  characters_arr = characters.dup #otherwise we lose leftovers
  until characters_arr.empty? #until all the char are reviewed
    char_evaluation << characters_arr.shift #the chars are placed into arr
    test1 = char_evaluation.join #a test word is formed from the array
    if valid_word?(test1)  #is that test word in the dictionary
      words << test1 #that joined word is stored away
      char_evaluation = [] #evaluation array is emptied (allows new words)  
    end
  end
  return char_evaluation, words # => chars that fail, words we found from dict
  end
  
  #leftovers_test sees if words were pulled prematurely (also compound words)
  #
  #last_word is the last word that passed, leftovers is unassigned characters
  #
  #=>the longer, BETTER word, any leftovers that were unassigned
  def leftovers_test(last_word,leftovers)
  possiblelongword = last_word.split("") #test last word that PASSED
  until leftovers.empty? #until all the chars are reviewed 
    possiblelongword << leftovers.shift #the leftover char are added to word
    longwordtest = possiblelongword.join #a test word is formed
    if valid_word?(longwordtest) #if this NEW, LONG word is in the dictionary
      return longwordtest,leftovers #=> the word that passed, chars that fail
    end
  end
  end
end

#StrSegmenter.new.segment_string("bluecatyarn")