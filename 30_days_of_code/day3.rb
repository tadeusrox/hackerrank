require 'bigdecimal'
meal_cost = gets.to_f
tip_percent = gets.to_f
tax_percent = gets.to_f

tip = BigDecimal.new(meal_cost, 5) * (BigDecimal.new(tip_percent, 5) / 100)
tax = BigDecimal.new(meal_cost, 5) * (BigDecimal.new(tax_percent, 5) / 100)

puts "The total meal cost is #{BigDecimal.new(meal_cost + tax + tip, 10).round} dollars."
