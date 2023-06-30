def process_word(word)
  morse_code_hash = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z'
  }

  array_of_words = word.split
  message = ''
  array_of_words.each do |char|
    message += morse_code_hash[char]
  end
  message
end

def decode_message(string)
  array_of_chars = string.split('  ')
  message_arr = {}
  array_of_chars.each do |word|
    message_arr.push(process_word(word)) if word != ''
  end
end

decode_message('  .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
decode_message('-- -.--   -. .- -- .')