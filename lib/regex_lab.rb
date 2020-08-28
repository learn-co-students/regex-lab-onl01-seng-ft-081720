require 'pry'

def starts_with_a_vowel?(word)
    x = word.to_s.downcase[0] 
    x[0].match(/[aeiou]/) ? true : false
end

def words_starting_with_un_and_ending_with_ing(text)
    text.scan(/un\w+ing/)
end

def words_five_letters_long(text)
    x = text.split(' ').map{|y| y+=" "} 
    z = x.map{|z| (z =~ /^\w{5}\s/) == 0 ? z.chomp(' ') : nil}
    z.select{|a| a}
end

def first_word_capitalized_and_ends_with_punctuation?(text)
    (text =~ /\A[A-Z] .*\.\z/) == 0 ? true : false
end

def valid_phone_number?(phone)
    phone.match(/[0-9]{10}|\([0-9]{3}\)([0-9]{3}\-[0-9]{4}|[0-9]{7})|[0-9]{3}.[0-9]{3}.[0-9]{4}/)
end

# words_five_letters_long("extreme briny crepe parking snaps grouping snafu round dog be fork spoon")
# binding.pry