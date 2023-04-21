# frozen_string_literal: true

def caesar_cipher(string, shift)
  alphabet_upper = %w[A B C D E F G H I J K L M N O P Q R S
                      T U V W X Y Z]
  alphabet_lower = %w[a b c d e f g h i j k l m n o p q r s
                      t u v w x y z]
  initial_array = make_array_from_string(string)
  new_array = []

  initial_array.each do |letter|
    case letter
    when ' '
      new_array.push(' ')
    when letter.upcase
      index = alphabet_upper.find_index(letter)
      new_index = index + shift
      new_index = shift_factor - (alphabet_upper.length - index) if new_index > (alphabet_upper.length - 1)
      new_array.push(alphabet_upper[new_index])
    when letter.downcase
      index = alphabet_lower.find_index(letter)
      new_index = index + shift
      new_index = shift_factor - (alphabet_lower.length - index) if new_index > (alphabet_lower.length - 1)
      new_array.push(alphabet_lower[new_index])
    end
  end
  create_string_from_array(new_array)
end

def make_array_from_string(string)
  string_array = []
  (0...string.length).each do |i|
    string_array.push(string[i])
  end

  string_array
end

def create_string_from_array(array)
  array.join('')
end

puts caesar_cipher('Jotaro Joestar', -6)
