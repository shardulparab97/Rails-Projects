#parsing a string wih multiple matches from a string
#Build a program that utilizes regular expressions to extract specific set integers from a string
#using regex
string_array=
    [
        "Web IconHTML & CSS100%",
        "Command LineLearn the Command Line100%",
        "Ruby IconRuby50%",
        "Rails IconLearn Ruby on Rails100%",
        "Git IconLearn Git100%",
        "SassLearn Sass20%",
        "JQuery IconjQuery1%",
        "Angular JSLearn AngularJS 1.X100%",
        "Javascript IconLearn JavaScript55%"
    ]

def string_parser (string_array)
    final_array=[]
  string_array.each do |str|
    final_array << str.scan(/\d+/).last.to_i
  end
  final_array
end

string_parser(string_array).each do |s|
  puts s
end