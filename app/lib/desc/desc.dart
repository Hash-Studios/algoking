class Desc {
  static Map code = {
    "Depth_First_Search":
        """Depth First Traversal (or Search) for a graph is similar to Depth First Traversal of a tree. The only catch here is, unlike trees, graphs may contain cycles, a node may be visited twice. To avoid processing a node more than once, use a boolean visited array.
    
    
Approach: Depth-first search is an algorithm for traversing or searching tree or graph data structures. The algorithm starts at the root node (selecting some arbitrary node as the root node in the case of a graph) and explores as far as possible along each branch before backtracking. So the basic idea is to start from the root or any arbitrary node and mark the node and move to the adjacent unmarked node and continue this loop until there is no unmarked adjacent node. Then backtrack and check for other unmarked nodes and traverse them. Finally print the nodes in the path.


Algorithm:

    Create a recursive function that takes the index of node and a visited array.
    Mark the current node as visited and print the node.
    Traverse all the adjacent and unmarked nodes and call the recursive function with index of adjacent node.

""",
    "Breadth_First_Search": """
Breadth First Traversal (or Search) for a graph is similar to Breadth First Traversal of a tree (See method 2 of this post). The only catch here is, unlike trees, graphs may contain cycles, so we may come to the same node again. To avoid processing a node more than once, we use a boolean visited array. For simplicity, it is assumed that all vertices are reachable from the starting vertex.

The implementation uses adjacency list representation of graphs. STL‘s list container is used to store lists of adjacent nodes and queue of nodes needed for BFS traversal.""",
    "Binary_Search": """
Binary Search: Search a sorted array by repeatedly dividing the search interval in half. Begin with an interval covering the whole array. If the value of the search key is less than the item in the middle of the interval, narrow the interval to the lower half. Otherwise narrow it to the upper half. Repeatedly check until the value is found or the interval is empty.

The idea of binary search is to use the information that the array is sorted and reduce the time complexity to O(Log n).

We basically ignore half of the elements just after one comparison.

    Compare x with the middle element.
    If x matches with middle element, we return the mid index.
    Else If x is greater than the mid element, then x can only lie in right half subarray after the mid element. So we recur for right half.
    Else (x is smaller) recur for the left half.
""",
    "Linear_Search":
        """Problem: Given an array arr[] of n elements, write a function to search a given element x in arr[].
    
A simple approach is to do linear search, i.e


    Start from the leftmost element of arr[] and one by one compare x with each element of arr[]
    If x matches with an element, return the index.
    If x doesn’t match with any of elements, return -1.


The time complexity of above algorithm is O(n).

Linear search is rarely used practically because other search algorithms such as the binary search algorithm and hash tables allow significantly faster searching comparison to Linear search.""",
    "Bubble_Sort": """""",
    "Heap_Sort": """""",
    "Insertion_Sort": """""",
    "Merge_Sort": """""",
    "Quick_Sort": """""",
    "Selection_Sort": """""",
    "Even_Odd": """""",
    "Factorial": """""",
    "Fibonacci": """""",
    "Greatest_Common_Divisor": """""",
    "Lowest_Common_Multiple": """""",
    "Max_Pairwise_Product": """""",
    "Prime_Numbers": """""",
    "Swap_Numbers": """""",
    "AVL_Tree": """""",
    "Array_Methods": """""",
    "Binary_Search_Tree": """""",
    "Huffman_Tree": """""",
    "Infix_to_Postfix": """""",
    "Infix_to_Prefix": """""",
    "Intersect_Arrays": """""",
    "Postfix_to_Infix": """""",
    "Prefix_to_Infix": """""",
    "Priority_Queue": """""",
    "Queue_using_Array": """""",
    "Queue_using_Linked_List": """""",
    "Queue_using_Stacks": """""",
    "Reverse_Linked_List": """""",
    "Stack_using_Array": """""",
    "Stack_using_Linked_List": """""",
    "Stack_using_Queues": """""",
    "Union_Array": """""",
    "Union_Sorted_Array": """""",
    "Knapsack_Problem": """""",
  };
}
