# frozen_string_literal: true

def substrings(text, dictionary)
  # dictionary: Array
  # text: String

  result = Hash.new(0)
  text = text.downcase

  dictionary.each do |word|
    next unless text.include?(word)

    # scan returns all matches for the word.
    # e.g. if "how" is seen twice, an array
    # of size 2 is returned
    result[word] = text.scan(word).size
  end

  result
end

dictionary = %w[below down go going horn how howdy
                it i low own part partner sit]

puts substrings('below', dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
