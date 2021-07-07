require 'pry'
def starts_with_a_vowel?(word)
    word.match(/^[aeiou]/i) != nil ? true : false
end

def words_starting_with_un_and_ending_with_ing(text)
    text.scan(/un[a-z]+ing/)
end

def words_five_letters_long(text)
    text.scan(/\b[a-z]{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
    text.match?(/^[A-Z].+[[:punct:]]$/)
end

def valid_phone_number?(phone)
    phone.match?(/\d{10}|\(\d{3}\)\d{3}\-\d{4}|\d{3}\s\d{3}\s\d{4}|\(\d{3}\)\d{7}/)
end
