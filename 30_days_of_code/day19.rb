# create the Solution class
class Solution
  def initialize
    @queue = []
    @stack = []
  end

  def push_character(c)
    @stack.push(c)
  end

  def enqueue_character(c)
    @stack.push(c)
  end

  def pop_character
    @stack.pop
  end

  def dequeue_character
    @stack.shift
  end
end
