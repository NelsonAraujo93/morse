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
  wholeWord = []
  wordsArray = word.split(' ')
  wordsArray.each  { |char| wholeWord.push(decode_char(char)) }
  wholeWord.join()
end

def decode(sentence)
  wholeSentence = []
  sentenceArray = sentence.split('   ')
  sentenceArray.each{ |word| wholeSentence.push(decode_word(word)) }
  wholeSentence.join(' ')
end

puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')