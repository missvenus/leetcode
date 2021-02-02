# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
    end
end

def inorder(root)
  if(root==nil)
    return
  end
  inorder(root.left)
  puts("#{root.val} ")
  inorder(root.right)
end

# @param {TreeNode} root
# @param {Integer} low
# @param {Integer} high
# @return {TreeNode}
def trim_bst(root, low, high)
  return if not root

  return trim_bst(root.left, low, high) if root.val > high
  return trim_bst(root.right, low, high) if root.val < low

  root.left = trim_bst(root.left, low, high)
  root.right = trim_bst(root.right, low, high)
  root
end

treeNode = TreeNode.new(2)
treeNode.left = TreeNode.new(5)
treeNode.right = TreeNode.new(6)
treeNode.left.left = TreeNode.new(3)
treeNode.left.right =TreeNode.new(4)
treeNode.right.left = TreeNode.new(5)
treeNode.right.right = TreeNode.new(8)

root = trim_bst(treeNode,1,5)
inorder(root)





