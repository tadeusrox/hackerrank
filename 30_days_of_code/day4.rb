#!/bin/ruby
#https://www.hackerrank.com/challenges/30-conditional-statements

n = gets.strip.to_i

if ((2..4).to_a.include?(n) || (n > 20)) && n % 2 == 0
  print "Not "
end

print "Weird"
