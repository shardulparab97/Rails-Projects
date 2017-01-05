require 'open-uri'
remote_base_url="https://en.wikipedia.org/wiki"

start_year=1900
end_year=1903

compile_file=open(start_year.to_s+"to"+end_year.to_s+".html","w")

(start_year..end_year).each do |year|
  rpage=open(remote_base_url+"/"+year.to_s).read
  lpage=open(year.to_s+".html","w")
  compile_file.write(rpage)
  lpage.write(rpage)
  lpage.close
  sleep 1
end

compile_file.close