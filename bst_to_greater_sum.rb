# Given the root of a Binary Search Tree (BST), convert it to a Greater Tree such that every key of the original BST is changed to the original key plus sum of all keys greater than the original key in BST.
#
# As a reminder, a binary search tree is a tree that satisfies these constraints:
#
#                                                                        The left subtree of a node contains only nodes with keys less than the node's key.
#     The right subtree of a node contains only nodes with keys greater than the node's key.
#   Both the left and right subtrees must also be binary search trees.
#
#   Note: This question is the same as 1038: https://leetcode.com/problems/binary-search-tree-to-greater-sum-tree/

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