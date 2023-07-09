# Overview
A project to find the shortest amount of moves it takes for a knight to get from one spot to another on a standard 8x8 chess board.

# Problem
Given a starting point and an end point, the algorithm must figure out how to get to that position in the least amount of moves (moving the way a knight would move).

The way this can be done is through mimicking the way a tree works. Let's say we start at A1, the knight has two places it can go, B2 and C3. These two moves are placed in the first level of the tree. If neither of these spots are the destination, then we move to the next level of the tree. This level will contain all the children of those moves. What's important to notice here is that a level will tell us what move we're on. Addtionally, this is exactly how BFS works. Therefore, we can create a BFS algorithm that will search until it finds the destination. The level it found it on will indicate how many moves it took. 

Additionally, we want to return the path it took to get to get there. When we get to a node, we want to make sure we can back track it to the root, so we'll give each nodes (in addition to 'children' pointers) a parenet pointer. 

# Pseudocode

# Acknowledgements
[The Odin Project](https://www.theodinproject.com/lessons/ruby-knights-travails)
