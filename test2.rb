def dice(sides, num=1, bonus=0)
  tally = 0
  # Repeat the next block of code for each die to be rolled.
  num.times do
    # rand(x) returns a number from 0 to x-1. Add one to that and you
    # got a single die roll. Add that result to the running tally.
    tally += 1 + rand(sides)
  end
  # the result of the last line in the function is what ruby returns.
  # Here, we want to add the bonus to our final tally, and the sum
  # will be returned.
  tally + bonus
end 

st = dice(6,1)
until st > 1
  st = dice(6,1)
end
puts "St: #{st}"

int = dice(6,1)
until int > 1
  int = dice(6,1)
end
puts "In: #{int}"