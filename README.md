# Overview
A project to find the shortest amount of moves it takes for a knight to get from one spot to another on a standard 8x8 chess board.

# Problem
Given a starting point and an end point, the algorithm must figure out how to get to that position in the least amount of moves (moving the way a knight would move).

The way this can be done is through mimicking the way a tree works. Let's say we start at A1, the knight has two places it can go, B2 and C3. These two moves are placed in the first level of the tree. If neither of these spots are the destination, then we move to the next level of the tree. This level will contain all the children of those moves. What's important to notice here is that a level will tell us what move we're on. Addtionally, this is exactly how BFS works. Therefore, we can create a BFS algorithm that will search until it finds the destination. The level it found it on will indicate how many moves it took. 

Additionally, we want to return the path it took to get to get there. When we get to a node, we want to make sure we can back track it to the root, so we'll give each nodes (in addition to 'children' pointers) a parenet pointer.

# Pseudocode
### Classes
To start, we need to know what components are necessary. We of course, need a board. To represent this, we can create a 2D array, containing 8 rows and 8 columns. We can represent each row with a letter of the alphabet, and each column with its respective index (how a normal chess board would work -- A1 - H8). 

We'll also need a "knight", this class can contain the "nodes" or squares in which the knight plans to visit (using a queue), and an array containing the nodes the knight has already visited. The point of this second array is to avoid repeating squares.  

Lastly, we'll need a way to represent the spots the knight can move to -- this can be done through a Node class. The Node class will need to consist of two components: parent and value (board spot).



# Acknowledgements
[The Odin Project](https://www.theodinproject.com/lessons/ruby-knights-travails)
