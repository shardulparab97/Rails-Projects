#overriding the string class
class String
  def censor(bad_word)
    self.gsub! "#{bad_word}","CENSORED" #helps in substituting
    #customising the string class to provide new methods
    #adds new functionality
  end

  def num_of_chars
    size
  end
end

p "bunny was in trouble with the other bunny".censor("bunny")
p "bunny was in trouble with the other bunny".num_of_chars