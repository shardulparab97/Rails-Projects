#this page makes use of the downloaded data
require "rubygems"
require "crack"
tweet_filename="USAGov-tweets-page-1.xml"
tweets_file=File.open(tweet_filename)
parsed_xml=Crack::XML.parse(tweets_file.read)
tweets_file.close

tweets=parsed_xml["statuses"]
first_tweet=tweets[0]
user=first_tweet["user"]
puts "Totak tweets:"+tweets.length.to_s
p "First available tweet is:"
puts user["screen_name"]
puts user["name"]
puts user["created_at"]
puts user["statuses_count"]

puts first_tweet["created_at"]
puts first_tweet["text"]
wordlist={}
puts "\n Analysis of page"
tweets.each do |tw|
  txt=tw['text'].downcase
  total_chars=txt.length
  words = txt.scan(/(?:^|\s)([a-z'\-]+)(?:$|\s|[.!,?:])/).flatten.select{|w| w.length > 1}

  words.each do |w|
    wordlist[w]||=0
    wordlist[w]+=1
  end
end

p "Number of different words:"
puts wordlist.length

p "Total Number of words used :"
p wordlist.inject(0){|result,element| result+element[1]}

sorted_word_list=wordlist.sort_by{|w| w[1]}.reverse
p "Most used words are:"
sorted_word_list[0..19].each do |wrd|
  p wrd[0].to_s+":"+wrd[1].to_s
end
