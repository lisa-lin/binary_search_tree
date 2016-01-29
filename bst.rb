class Node
	attr_accessor :value, :left, :right
	def initialize(value)
		@value = value
		@left, @right = nil, nil
	end
end

def build_tree(array)
	root = Node.new(array.shift) if array.length > 0
	array.each do |number|
		add(number, root)
	end
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

# script to test run build_tree
array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
build_tree(array)

=begin
def breadth_first_search
	# uses BFS to return node at which target value is located
	# use array acting as a queue to keep track of child nodes that you have yet to search and to add new ones to the list
	# if target node value is not located, return nil
end

def depth_first_search
	# uses DFS 
	# use array acting as a stack
end

def dfs_rec
	# instead of stack, use a recursive method
	# look at tips
end
=end