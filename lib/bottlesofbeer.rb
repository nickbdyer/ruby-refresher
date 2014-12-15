# print the lyrics of the song 99 bottles of beer on the wall
# http://www.99-bottles-of-beer.net/lyrics.html
# make sure you use the singular when you have one bottle of 
# beer on the wall, and print 'no more bottles of beer on the wall'
# at the end.
# (there's no RSpec test for this one)

def ninety_nine_bottles_of_beer
  99.downto(0).each do |i|
    puts first_phrase(i).capitalize + ", " + bottles(i) + plural(i) + " of beer."
    puts second_line(i-1) + "." unless i == 0
  end
  puts final_line
end

def final_line
  "Go to the store and buy some more, 99 bottles of beer on the wall.." 
end

def first_phrase(number_of_bottles)
  bottles(number_of_bottles) + plural(number_of_bottles) + " of beer on the wall" 
end

def second_line(number_of_bottles)
  "Take one down and pass it around, " + first_phrase(number_of_bottles) 
end

def plural(number)
  number == 1 ? "" : "s"
end

def bottles(number)
  number > 0 ? "#{number} bottle" : "no more bottle"
end

ninety_nine_bottles_of_beer