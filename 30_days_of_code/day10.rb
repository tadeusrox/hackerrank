# Enter your code here. Read input from STDIN. Print output to STDOUT

def factorial(n)
  return 2 if n == 2
  factorial(n-1) * n
end

input = gets.strip.to_i

puts factorial(input)
