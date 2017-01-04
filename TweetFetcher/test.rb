require 'https'
http.verify_mode = OpenSSL::SSL::VERIFY_NONE
require 'open-uri'
puts open("https://en.wikipedia.org/wiki/Ada_Lovelace").read
