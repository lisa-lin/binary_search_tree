class Node
	attr_accessor :value, :left, :right
	def initialize(value)
		@value = value
		@left, @right = nil, nil
	end
end

def build_tree(array)
	root = Node.new(array.shift) if !array.empty?
	array.each do |number|
		add(number, root)
	end
	return root
end

def add(value, root)
	if (value < root.value) && (root.left == nil)
		root.left = Node.new(value)
	elsif (value >= root.value) && (root.right == nil)
		root.right = Node.new(value)
	else
		if value < root.value
			add(value, root.left)
		elsif value >= root.value
			add(value, root.right)
		end
	end
end

# script to test build_tree
array = [9, 8, 3, 10, 1, 6]
tree = build_tree(array)

def breadth_first_search(target, root)
	queue = []
	element = root
	return element if element.value == target
	loop do
		queue << element.left if !element.left.nil?		
		queue << element.right if !element.right.nil?	
		element = queue.shift							
		return element if element.value == target		
		break if queue.empty?
	end
	nil
end

# script to test BFS
#puts breadth_first_search(9, tree).value

# implemented with a stack
def depth_first_search(target, root)
	stack = []
	element = root
	return element if element.value == target
	loop do
		stack << element.right if !element.right.nil?
		stack << element.left if !element.left.nil?
		element = stack.pop
		return element if element.value == target
		break if stack.empty?
	end
	nil
end

# script to test DFS
#puts depth_first_search(1, tree).value

# runs a depth first search recursively
def dfs_rec(target, node)
	return node if node.value == target
	search_left = dfs_rec(target, node.left) if !node.left.nil?
	return search_left if search_left
	search_right = dfs_rec(target, node.right) if !node.right.nil?
	return search_right if search_right
	nil
end

#script to test dfs_rec
puts dfs_rec(1, tree).value
