#this file is being used to download two twitter files
require "open-uri"

remote_base_url = "http://ruby.bastardsbook.com/files/tweet-fetcher/tweets-data/USAGov-tweets-page-"
twitter_user = "USAGov"
#remote_full_url = remote_base_url + twitter_user
first_page = 1
last_page = 2


(first_page..last_page).each do |page_num|

  puts "Downloading page: " + page_num.to_s
#  tweets = open(remote_base_url + twitter_user + "&page=" + page_num.to_s).read
    tweets=open(remote_base_url+"#{page_num}.xml").read
  my_local_filename = twitter_user + "-tweets-page-" + page_num.to_s + ".xml"
  my_local_file = open(my_local_filename, "w")
  my_local_file.write(tweets)
  my_local_file.close

  sleep 2

end