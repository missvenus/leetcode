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
# @return {Integer[]}
def postorder_traversal(root)
  res = []
  postot(root,res)
  res
end

def postot(root, res)
  return res unless root
  postot(root.left,res) if root.left
  postot(root.right,res) if root.right
  res << root.val
end