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

# script to test run build_tree
array = [9, 8, 3, 10, 1, 6]
build_tree(array)

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
end

# script to test run BFS
puts breadth_first_search(6, build_tree(array)).value

=begin
# implemented with a stack
def depth_first_search
	# uses DFS 
	# use array acting as a stack
end

def dfs_rec
	# instead of stack, use a recursive method
	# look at tips
end
=end