text = "What a string!"
shift = 5

def caesar_cipher(text, shift)
  ciphered_text = ""
  text.each_char do |char|
    if char.match(/[a-zA-Z]/)
      if char.match(/[A-Z]/)
      ciphered_text += ((char.ord + shift - 65) % 26 + 65).chr
    else
      ciphered_text += ((char.ord + shift - 97) % 26 + 97).chr
      end
    else
      ciphered_text += char
      end
  end
  return ciphered_text
end

ciphered_text = caesar_cipher(text, shift)
puts ciphered_text