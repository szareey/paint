
def calcCost(x, y, colours)
  taxes = 1.15
  colourPriceBreak = 2
  paintCostMin = 10
  paintCostMax = 15
  costSqFt = 15
  
  if colours <= colourPriceBreak
    cost = paintCostMin
  else
    cost = paintCostMax
  end
  cost = (cost + x*y*costSqFt) * taxes
end

def getInfo
  puts 'What length of the sign?'
  signLength = gets.chomp.to_i
  puts 'What is the width of the sign?'
  signWidth = gets.chomp.to_i
  puts 'How many colours will you use?'
  colourCount = gets.chomp.to_i
  puts "The sign will cost $#{calcCost(signLength, signWidth, colourCount)}"
end

puts '*** Welcome to the Paint Pro Paint Cost Calculator Extravagenza ***'
getInfo