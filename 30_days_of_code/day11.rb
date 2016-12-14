#!/bin/ruby

n = gets.strip.to_i

binary_chars = n.to_s(2).chars
binary_chars << 'x'
consecutive_counts = 0
response = 0
last_char = nil

all_ones = (binary_chars - ['x']).all? {|x| x == '1' }

if all_ones
  puts binary_chars.length - 1
else
  binary_chars.each_with_index do |c|
    if (c == '1' && (last_char == '1' || last_char == nil)) || ( c == 'x' && last_char == '1')
      consecutive_counts += 1
    else
      consecutive_counts = 0
    end
    if response < consecutive_counts
      response = consecutive_counts
    end
    last_char = c
  end

  puts response
end
