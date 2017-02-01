#!/bin/ruby

N = gets.strip.to_i

first_names = []
for a0 in (0..N-1)
  first_name, email_address = gets.strip.split(' ')
  if email_address.slice(/@(.*)/, 1) == 'gmail.com'
    first_names << first_name
  end
end

puts first_names.sort
