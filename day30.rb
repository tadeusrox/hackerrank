#!/bin/ruby

t = gets.strip.to_i
for a0 in (0..t-1)
    n,k = gets.strip.split(' ')
    n = n.to_i
    k = k.to_i
    max = 0
  (1..n).each do |first|
    ((first + 1)..n).each do |second|
      res = first & second
      if res < k && res >= max
        max = res
      end
    end
  end
  puts max
end
