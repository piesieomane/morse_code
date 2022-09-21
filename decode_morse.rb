def decode_character(code)
  codes = {
    'A' => '.-', 'B' => '-...', 'C' => '-.-.', 'D' => '-..', 'E' => '.', 'F' => '..-.', 'G' => '--.',
    'H' => '....', 'I' => '..', 'J' => '.---', 'K' => '-.-', 'L' => '.-..', 'M' => '--', 'N' => '-.',
    'O' => '---', 'p' => '.--.', 'Q' => '--.-', 'R' => '.-.', 'S' => '...', 'T' => '-', 'U' => '..-',
    'V' => '...-', 'W' => '.--', 'X' => '-..-', 'Y' => '-.--', 'Z' => '--..'
  }
  codes.key(code)
end

# print 'Character is: '
# print decode_character('-..-')
def decode_word(string)
  word = ''
  string.split.each { |code| word += decode_character(code) }
  word
end

# print decode_word("-- -.--")

def decode(sentence)
  string = ''
  sentence.split('  ').each { |code| string += " #{decode_word(code)}" }
  string
end

print decode('-- -.--   -. .- -- .')
print decode('      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
