class Node
  attr_accessor :data,:next

  def initialize data
    @data = data
    @next = nil
  end
end

class Solution
    def insert(head,value)
      return Node.new(value) if head.nil?

      if head.next.nil?
        head.next = Node.new(value)
        return head
      end

      it = head.next
      while(!it.next.nil?)
        it = it.next
      end

      it.next = Node.new(value)
      head
    end

    def display(head)
       current = head
       while current
          print current.data," "
          current = current.next
       end
   end
end

mylist= Solution.new
head=nil
T=gets.to_i
for i in 1..T
    data=gets.to_i
    head=mylist.insert(head,data)
    puts "Head #{head.inspect}"
end
mylist.display(head)
