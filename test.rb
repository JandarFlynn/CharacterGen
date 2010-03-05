srand 42



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
def assign_name
  puts "What do you want to name your character? "
  charName = gets.strip
  puts "Ok, " + charName + " it is!"
end

assign_name

# Choosing a class
def class_choice
  puts "What class would you like to be? Fighter, Wizard or Cleric? "
  klass = gets.strip
  puts "A " + klass + "? Excellent choice."
  return klass
end

class_name = class_choice

# Assigning Stats
puts "Here are your stats:"

stat_adjustments = {}
if class_name == "Fighter"
  stat_adjustments = { "Str" => 2 , "Con" => 2 , "Cha" => -2}
elsif class_name == "Wizard"
  stat_adjustments = { "Str" => -1 , "Con" => -1 , "Int" => 2}
elsif class_name == "Cleric"
  stat_adjustments = { "Dex" => -2 , "Wis" => 2 , "Cha" => 1}
end

["Str" , "Dex" , "Con" , "Int" , "Wis" , "Cha"].each do |attribute|
  stat = dice(6,3)
  until stat > 5
    stat = dice(6,3)
  end
  if stat_adjustments.has_key? attribute
    stat += stat_adjustments[attribute]
  end
  puts "#{attribute}: #{stat}"
end

