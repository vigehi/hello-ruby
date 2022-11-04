# rubocop:disable Metrics/MethodLength

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
    ' ' => ' '
  }

  check.key(char).upcase
end

def decode_words(code)
  codelist = code.split
  word = ''
  codelist.each do |char1|
    word += decode(char1)
  end
  word
end

def morse_message(codes)
  codelist = codes.split('  ')
  message = ''
  codelist.each do |char1|
    message += decode_words(char1).concat(' ')
  end
  message
end

puts morse_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
puts morse_message(' -- -.--  -. .- -- .')
