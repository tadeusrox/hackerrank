# Enter your code here. Read input from STDIN. Print output to STDOUT
require 'prime'
n = gets.strip.to_i

while(n != 0)
  if Prime.prime?(gets.strip.to_i)
    puts "Prime"
  else
    puts "Not prime"
  end

  n -= 1
end
