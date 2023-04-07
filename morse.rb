def decode_char(morse)
  charts = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
    '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
    '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z'
  }
  charts[morse]
end

def decode_word(word)
  whole_word = []
  words_array = word.split(/ /)
  words_array.each { |char| whole_word.push(decode_char(char)) }
  whole_word.join
end

def decode(sentence)
  whole_sentence = []
  sentence_array = sentence.split('   ')
  sentence_array.each { |word| whole_sentence.push(decode_word(word)) }
  whole_sentence.join(' ')
end

puts decode_char(".-")
puts decode_word("-- -.--")
puts decode("-- -.--   -. .- -- .")
puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
