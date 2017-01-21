def removeDuplicates(head)
  @number_list ||= {}
  #write your code here
  new_head = Node.new(head.data)
  @number_list[head.data] = true
  return head if head.next.nil?

  it = head.next

  while(!it.nil?)
    if !@number_list[it.data]
      new_head = insert(new_head, it.data)
      @number_list[it.data] = true
    end
    it = it.next
  end

  new_head
end

