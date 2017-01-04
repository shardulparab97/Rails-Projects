#I am Yoda  => Yoda am I
str=gets.chomp

def sentence_rev str
  ans=str.split.reverse.join(' ')
  puts ans
end

sentence_rev(str)
