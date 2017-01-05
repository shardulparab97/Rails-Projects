require 'date'
years=(1900..1999).to_a
leap=Array.new

years.each do |y|
  if(y%4==0 && y%100!=0)
leap.push(y)
  end
  #another method is
  #leap << y if y%4==0
end

p leap

#using ruby date library

leap2=[]


years.each do |y|
  current_year=Date.new(y)
  leap2 << y if current_year.leap?
end

p leap2