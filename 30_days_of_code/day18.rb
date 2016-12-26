class Calculator
  def power(n, p)
    raise RangeError, "n and p should be non-negative" if n < 0 || p < 0
    n ** p
  end
end
# Write your code here
