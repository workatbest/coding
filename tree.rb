class TreeNode 
    attr_accessor :left, :right, :data
    
    def initialize(data)
        @data = data 
        @left = nil
        @right = nil
    end
end

def add_binary(a, n)
  new_node = TreeNode.new(n)
  return new_node unless a
  
end

def inorder(a)
  return unless a
  inorder(a.left)
  p a.data
  inorder(a.right)
end

def preorder(a)
  return unless a
  p a.data
  preorder(a.left)
  preorder(a.right)
end

def postorder(a)
  return unless a
  postorder(a.left)
  postorder(a.right)
  p a.data
end

def maxDefth(a)
    return 0 unless a
    l = maxDefth(a.left) + 1
    r = maxDefth(a.right) + 1
    return [l, r].max + 1
end


a = TreeNode.new(4)
a.left = TreeNode.new(2)
a.left.left = TreeNode.new(1)
a.left.right = TreeNode.new(3)
a.right = TreeNode.new(6)
a.right.left = TreeNode.new(5)
a.right.right = TreeNode.new(8)
a.right.right.left = TreeNode.new(7)
inorder(a)
preorder(a)
postorder(a)
p "Defth"
p maxDefth(a)
