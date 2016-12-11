input = gets.strip.to_i

phone_book = {}

count = 0

while(count != input)
  name, value = gets.strip.split(' ')
  phone_book[name] = value
  count += 1
end

test_cases = []

while(test_case = gets)
  test_case.strip!
  if phone_book.keys.include?(test_case)
    puts "#{test_case}=#{phone_book[test_case]}"
  else
    puts 'Not found'
  end
end
