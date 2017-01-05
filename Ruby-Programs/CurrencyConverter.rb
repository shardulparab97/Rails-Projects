money=10.2
p "$%.2f" %money

def CurrencyConverter (amount,location)
  case location
    when 'US' then "$%.2f" % amount
    when 'India' then "Rs %.2f" % amount
  end
end

location=gets.chomp
p CurrencyConverter(money,location)