def decode(char)
  check = {
    'a' => '.-',
    'b' => '-...',
    'c' => '-.-.',
    'd' => '-..',
    'e' => '.',
    'f' => '..-.',
    'g' => '--.',
    'h' => '....',
    'i' => '..',
    'j' => '.---',
    'k' => '-.-',
    'l' => '.-..',
    'm' => '--',
    'n' => '-.',
    'o' => '---',
    'p' => '.--.',
    'q' => '--.-',
    'r' => '.-.',
    's' => '...',
    't' => '-',
    'u' => '..-',
    'v' => '...-',
    'w' => '.--',
    'x' => '-..-',
    'y' => '-.--',
    'z' => '--..',
    ' ' => ' ',
    '1' => '.----',
    '2' => '..---',
    '3' => '...--',
    '4' => '....-',
    '5' => '.....',
    '6' => '-....',
    '7' => '--...',
    '8' => '---..',
    '9' => '----.',
    '0' => '-----'
  }

  check.key(char).upcase
end
# rubocop:enable Metrics/MethodLength

# get each word
def decode_words(code)
  codelist = code.split
  word = ''
  codelist.each do |char1|
    word += decode(char1)
  end
  word
end

# combine words in message
def morse_message(codes)
  codelist = codes.split('  ')
  message = ''
  codelist.each do |char1|
    message += decode_words(char1).concat(' ')
  end
  message
end

# Returns A BOX FULL OF RUBIES
puts morse_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
