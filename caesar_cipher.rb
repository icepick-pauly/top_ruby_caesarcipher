@cipher = {
  "a" => 1,
  "b" => 2,
  "c" => 3,
  "d" => 4,
  "e" => 5,
  "f" => 6,
  "g" => 7,
  "h" => 8,
  "i" => 9,
  "j" => 10,
  "k" => 11,
  "l" => 12,
  "m" => 13,
  "n" => 14,
  "o" => 15,
  "p" => 16,
  "q" => 17,
  "r" => 18,
  "s" => 19,
  "t" => 20,
  "u" => 21,
  "v" => 22,
  "w" => 23,
  "x" => 24,
  "y" => 25,
  "z" => 26,
}

#string = "b"
#puts cipher.key(cipher[string]+3)

#ciphers one letter
#def caesar_cipher(letter, shift)
 #print @cipher.key(@cipher[letter]+shift)
 #end

#caesar_cipher("f", 12)

#multi letter cipher components
#string = "abdefg"
#split_string = string.split("")

#split_string.each {|letter| print cipher.key(cipher#[letter]+ 10)}

# 1 word caesar_cipher
def word_cipher(word, shift)
   output = ''
   word.split(//).each {|letter| output << @cipher.key(@cipher[letter]+ shift)}
   output
end

#split sentence string into an arrays sorted by words with the letter separated
def sentence_array(sentence)
  sentence.split
end

#multi letter caesar cipher
def caesar_cipher(input, shift)
  output = ""
  words = sentence_array(input)
  words.each do |word|
    output << word_cipher(word.downcase, shift)
    output << " " unless word == words.last
  end
  output.capitalize
end

puts caesar_cipher("Paul", 4)
