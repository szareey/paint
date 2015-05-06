def calcCost(x, y, colours)
  if colours <= 2
    cost = 10
  else
    cost = 15
  end
  cost = (cost + x*y*15) * 1.15
end



puts 'What length of the sign?'
signLength = gets.chomp.to_i
puts 'What is the width of the sign?'
signWidth = gets.chomp.to_i
puts 'How many colours will you use?'
colourCount = gets.chomp.to_i

puts "The sign will cost $#{calcCost(signLength, signWidth, colourCount)}"