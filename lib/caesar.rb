def caesar_encode(string,offset)
  alphabet = [*('a'..'z'), *('A'..'Z')] 
  string.split("").map { |letter| 
    string_old_index = alphabet.index(letter)
    if alphabet[26..51].include?(letter)
      string_new_index = (string_old_index + offset)%26
      alphabet[string_new_index].upcase
    elsif alphabet[0..25].include?(letter)
      string_new_index = (string_old_index + offset)%26
      alphabet[string_new_index]
    else
      letter
    end
  }.join
  # return offset
  # alphabet[26..51]
end
# puts "What would you like to encode?"
# user_string = gets.chomp
# puts "What do you want the offset to be?"
# user_offset = gets.chomp.to_i
# puts caesar_encode(user_string,user_offset)

def caesar_decode(string,offset)
  caesar_encode(string, offset *-1)
end
# puts "What would you like to encode?"
# user_string = gets.chomp
# puts "What do you want the offset to be?"
# user_offset = gets.chomp.to_i
# puts caesar_decode(user_string,user_offset)



