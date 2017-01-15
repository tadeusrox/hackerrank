def getHeight(root)
  if !root.left.nil? && !root.right.nil?
    return getHeight(root.left) > getHeight(root.right) ? getHeight(root.left) + 1 : getHeight(root.right) + 1
  elsif !root.left.nil? && root.right.nil?
    return getHeight(root.left) + 1
  elsif root.left.nil? && !root.right.nil?
    return getHeight(root.right) + 1
  end
  return 0
end
