# Rolls dice, given number of dice to roll, sides per die, and bonus.
# E.g.:
#   1d20 => dice 20
#   2d4 => dice 4, 2
#   3d6+3 => dice 6, 3, 3
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

# Naming the character
def assignName
  puts "What do you want to name your character? "
  charName = gets
  puts "Ok, we'll call him " + charName
end

assignName

# Assigning Stats
puts "Here are your stats:"

["Str" , "Dex" , "Con" , "Int" , "Wis" , "Cha"].each do |attribute|
  stat = dice(6,3)
  until stat > 5
    stat = dice(6,3)
  end
  puts "#{attribute}: #{stat}"
end

