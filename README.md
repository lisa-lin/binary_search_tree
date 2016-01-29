#Binary Search Tree (BST)

Creates a Binary Search Tree and gives the ability to search the tree using Breadth First Search (BFS), Depth First Search (DFS), and recursive DFS.

###Balanced Binary Search Tree
![](https://upload.wikimedia.org/wikipedia/commons/d/da/Binary_search_tree.svg)

*Image licensed under Creative Commons c/o Wikipedia user [Inductiveload](https://commons.wikimedia.org/wiki/Special:Contributions/Inductiveload)*

* `#build_tree` method takes a sorted or unsorted array as an argument and creates a BST of 'Nodes' with the given values. 

* `#breadth_first_search` method 1) takes an integer to search for and 2) the BST to search through as arguments. Then uses BFS to search for the given integer, returning nil when not found. 

![](https://upload.wikimedia.org/wikipedia/commons/5/5d/Breadth-First-Search-Algorithm.gif)

*Image licensed under Creative Commons c/o Wikipedia user [Mre](https://commons.wikimedia.org/wiki/Special:Contributions/Mre)*

* `#depth_first_search` method 1) takes an integer to search for and 2) the BST to search through as arguments. Uses DFS to search for the given integer, returning nil when not found. 

![](https://upload.wikimedia.org/wikipedia/commons/7/7f/Depth-First-Search.gif)

*Image licensed under Creative Commons c/o Wikipedia user [Mre](https://commons.wikimedia.org/wiki/Special:Contributions/Mre)*

* `#dfs_rec` same as `#depth_first_search` except uses recursion to find the given value. 
