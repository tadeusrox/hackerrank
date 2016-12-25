#!/bin/ruby


string = gets.strip

begin
  puts Integer(string)
rescue ArgumentError
  puts "Bad String"
end
