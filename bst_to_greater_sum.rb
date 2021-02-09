# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {TreeNode}

$sum = 0

def convert_bst(root)
  greater_value(root)
end

def greater_value(root)
  return if(root == nil)
  greater_value(root.right)
  $sum += root.data
  root.data = $sum
  greater_value(root.left)
end

def inorder(root)
  if(root==nil)
    return
  end
  inorder(root.left)
  puts("#{root.val} ")
  inorder(root.right)
end