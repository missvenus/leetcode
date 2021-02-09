# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
    end
end
# @param {TreeNode} root
# @return {Integer[]}
# def right_side_view(root)
#   arr = []
#   while(root)
#     arr.push root.val
#     if(root.right)
#       root = root.right
#     else
#       root = root.left
#     end
#   end
#   arr
# end

# def right_side_tree(root)
#   return if not root
#   root.right = right_side_view(root.right)
#   root.left = nil
#   root
# end

# def right_side_tree(root)
#   tree = TreeNode.new(root.val)
#   while(root)
#     if(root.right)
#       tree.right = root.right
#       root = root.right
#     else
#       tree.left = root.left
#       root = root.left
#     end
#   end
#   root
# end

treeNode = TreeNode.new(1)
treeNode.left = TreeNode.new(2)
# treeNode.right = TreeNode.new(3)
# treeNode.left.right =TreeNode.new(5)
# treeNode.right.left = TreeNode.new(7)
# treeNode.right.right = TreeNode.new(4)


puts right_side_view(treeNode)
