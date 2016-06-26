#take english word from argument
#get all consonants from the beginning of the word
#pop them from the beginning and add them to the end
#add "ay"
#return the new pig latin word

def converter(english)
  if english.match(/\A[aeiouAEIOU]/)
    return english
  end
  english.each_char do |letter|
    if english.match(/\A[^aeiouAEIOU]/)
      first_cns = english.slice(0)
      english.slice!(0)
      english = english + first_cns
    end
  end
  english = english + "ay"
end

# converter("i am chris")
# converter("apple")
# converter("driver")
# converter("elephant")

#take sentence from argument
#split sentence into words
#loop through the words to run converter method for each word

def sentence_conv(sentence)
  sentence_arr = sentence.split(" ")
  pig_sentence = ""
  sentence_arr.each do |word|
    pig_sentence << converter(word) + " "
  end
  return pig_sentence
end
# p sentence_conv("I am chris")
# p sentence_conv("dogs are mans best friend")