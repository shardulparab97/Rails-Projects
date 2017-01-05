require 'open-uri'
puts "Enter the name of the person who's wikipedia page you want to download"
name=gets.chomp
name=name.sub(" ","_")

remote_data=open("https://en.wikipedia.org/wiki/"+name).read #opened for reading
local_file=open("my-download-page-#{name}.html","w")#opened for writing
local_file.write(remote_data)
local_file.close
