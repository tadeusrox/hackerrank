#!/bin/ruby
# https://www.hackerrank.com/challenges/ctci-array-left-rotation
n,k = gets.strip.split(' ')
n = n.to_i
k = k.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)

response = Array.new(n)
a.each_with_index do |e, i|
    response[i-k] = e
end
puts response.join(' ')
