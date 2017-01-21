def levelOrder(root)
  @array ||= []
  return if root.nil?
  fill_array(root, 1)
  puts @array.sort_by(&:last).map(&:first).join(' ')
end

def fill_array(root, order)
  return if root.nil?
    @array << [root.data, order]
    fill_array(root.left, order+1)
    fill_array(root.right, order+1)
  end
end
