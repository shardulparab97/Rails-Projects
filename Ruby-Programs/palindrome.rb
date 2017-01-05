def palindrome? word
  word.downcase==word.downcase.reverse
end

p palindrome?("palindrome")