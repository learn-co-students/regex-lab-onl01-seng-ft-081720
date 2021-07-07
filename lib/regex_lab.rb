
def starts_with_a_vowel?(word)
    word[0].scan(/[iAEIOU]/i) != []
end

def words_starting_with_un_and_ending_with_ing(text)
    text.scan(/(un+\w+ing)/i).flatten
end

def words_five_letters_long(text)
    text.scan(/\b\w{5}\b/).flatten
end


def first_word_capitalized_and_ends_with_punctuation?(text)
    first=text[0]
    last=text[text.length - 1]
    if first.scan(/[A-Z]/) != [] && last.scan(/[.]/) != []
        true
    else  
        false 
    end
end


def valid_phone_number?(phone)
    if phone.scan(/\d{10}/) !=[] || phone.scan(/\((\d+)\)+\d+-+\d+/) !=[] || phone.scan(/\d{3}+ +\d{3}+ +\d{4}/) !=[] || phone.scan(/\(\d{3}\)\d{7}/) != []
    true
    else false 
    end
end
