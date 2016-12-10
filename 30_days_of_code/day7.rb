input = gets.strip.to_i

input_strings = []

count = 0
while(count != input)
  input_strings[count] = gets.strip
  count += 1
end

output = []

input_strings.each_with_index do |string, i|
  chars = string.chars
  output[i] = chars.select.with_index {|c, i| c if i.even? }.join
  output[i] += " "
  output[i] += chars.select.with_index {|c, i| c if i.odd? }.join
end

puts output
