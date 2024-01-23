DIGITS = %w(1 2 3 4 5 6 7 8 9 0)
LETTERS = %w(a b c d e f g h i j k l m n o p q r s t u v)
def real_palindrome?(string)
  alphanumeric_string = string.downcase.split("").select do |char|
    DIGITS.include?(char) || LETTERS.include?(char)
  end
  alphanumeric_string = alphanumeric_string.join
  alphanumeric_string == alphanumeric_string.reverse
end







p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false