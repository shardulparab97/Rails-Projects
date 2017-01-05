#how to map array data in Ruby, and specifically how we can build a method that takes in an unlimited number of arrays by leveraging the splat operator
headers = [
    '1B',
    '2B',
    '3B',
    'SS',
    'C',
    'P',
    'LF',
    'CF',
    'RF'
]

astros = [
    'Gurriel',
    'Altuve',
    'Bregman',
    'Correa',
    'Gattis',
    'Keuchel',
    'Beltran',
    'Springer',
    'Reddick'
]

rangers = [
    'Fielder',
    'Andrus',
    'Odor',
    'Beltre',
    'Lucroy',
    'Darvish',
    'Gomez',
    'Choo',
    'Mazara'
]

p headers.zip(astros,rangers)

#at times you may not know the number of parameters
def position_filter (headers, *data) # *data means a splat argument , can be any no of argumeny
  #no hardcoding needed
  p headers.zip(data)  #will make an error
  p headers.zip(*data)
end

position_filter(headers,astros,rangers)