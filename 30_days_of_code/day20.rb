#!/bin/ruby

n = gets.strip.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)

total_swaps = 0
(0..n-1).each do |i|
  swaps = 0
  (0..n-2).each do |j|
    if a[j] > a[j + 1]
      temp = a[j]
      a[j] = a[j + 1]
      a[j + 1] = temp
      swaps += 1
      total_swaps += 1
    end
  end

  if swaps == 0
    break
  end
end

puts "Array is sorted in #{total_swaps} swaps."
puts "First Element: #{a.first}"
puts "Last Element: #{a.last}"
