
def starts_with_a_vowel?(word)
    word.start_with?(/\A[aeiou]/i)
end

def words_starting_with_un_and_ending_with_ing(text)
    return_array = []
    text.split(" ").each do |word|
        if word.match(/ing\z?/)
            return_array << word
        end
    end
    return_array
end

def words_five_letters_long(text)
    result_array = []
    text.split(" ").each do |word|
        result_array << word if word.length == 5
    end
    result_array
end  

def first_word_capitalized_and_ends_with_punctuation?(text)
    if text[0].match(/[A-Z]/) && text.split("").last.match(/[!?.]/)
        true
    else
        false 
    end
end

def valid_phone_number?(phone)
    phone_digits = phone.scan(/\d/)
    if phone_digits.length != 10
        false
    else
        true
    end
end