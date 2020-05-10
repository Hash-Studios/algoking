class DART {
  static Map code = {
    "Depth_First_Search": """""",
    "Breadth_First_Search": """""",
    "Binary_Search": """int binary_search(List a, int l, int r, int x) {
  if (r >= l) {
    int middle = (l + (r - l) / 2).toInt();
    if (a[middle] == x) {
      return middle;
    }
    if (a[middle] > x) {
      return binary_search(a, l, middle - 1, x);
    }

    return binary_search(a, middle + 1, r, x);
  }
  return -1;
}

void main() {
  var list = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  var x = 55;
  int n = list.length;
  var index = binary_search(list, 0, n - 1, x);
  print('list:');
  print(list);
  if (index != -1) {
    print(x.toString() + ' found at positions: ' + index.toString());
  } else {
    print(x.toString() + ' Not found');
  }
}""",
    "Linear_Search": """int linear_search(List a, number) {
  for (var i = 0; i < a.length; i++) {
    if (a[i] == number) {
      return i;
    }
  }
  return -1;
}

void main() {
  var list = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  var x = 15;
  var index = linear_search(list, x);
  print('list:');
  print(list);
  if (index != -1) {
    print(x.toString() + ' found at positions: ' + index.toString());
  } else {
    print(x.toString() + ' Not found');
  }
}""",
    "Bubble_Sort": """import 'dart:math' show Random;
void main() {
  final seed = 100, rnd = Random(), length = 100;
  var list =
      List<int>.generate(length, (i) => rnd.nextInt(seed), growable: false);
  print('before sorting:');
  print(list);
  print('---------------------------------------------');
  print('After sorting:');
  bubbleSort(list);
  print(list);
}

void bubbleSort(List<int> a) {
  for (var i = 0, length = a.length; i < length - 1; ++i) {
    bool swapped = false;
    for (var j = 0; j < length - 1 - i; ++j) {
      if (a[j] > a[j + 1]) {
        /* swap */
        var temp = a[j];
        a[j] = a[j + 1];
        a[j + 1] = temp;
        swapped = true;
      }
    }
    if (!swapped) {
      break;
    }
  }
}""",
    "Heap_Sort": """void sort(List arr){
  int n = arr.length;
  for(var i = n / 2 - 1; i >= 0; i--){
    heapify(arr,n,i);
  }
  for(var i = n - 1; i >= 0; i--){
    var temp = arr[0];
    arr[0] = arr[i];
    arr[i] = temp;
    heapify(arr,i,0);
  }
}

void heapify(List arr,var n,var i){
  var largest = i;
  var l = 2 * i + 1;
  var r = 2 * i + 2;
  
  if(l < n && arr[l] > arr[largest])
    largest = l;
  if(r < n && arr[r] > arr[largest])
    largest = r;
  if(largest != i){
    var swap = arr[i];
    arr[i] = arr[largest];
    arr[largest] = swap;
    heapify(arr,n,largest);
  }
}

void main(){
  List list = [19,48,5,7,99,10];
  sort(list);
  print(list);
}""",
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
    "Binary_Search_Tree": """class Node{
  var data;
  var left;
  var right;
  
  Node(var data){
    this.data = data;
    this.left = null;
    this.right = null;
  }  
}
void display(var tree){
  
  if(tree == null){
    return;
  }
  
  if(tree.left != null){
    display(tree.left);
  }
  
  print(tree.data);
  
  if(tree.right != null){
    display(tree.right);
  }
  
  return;
}
double depth_of_tree(var tree){
  
  if(tree == null){
    return 0;
  }
  else{
    var depth_l_tree = depth_of_tree(tree.left);
    var depth_r_tree = depth_of_tree(tree.right);
    
    if(depth_l_tree > depth_r_tree){
      return (1 + depth_l_tree);
    }
    else{
      return (1 + depth_r_tree);
    }
  }
}
bool is_full_binary_tree(var tree){
  if(tree == null){
    return true;
  }
  if(tree.left == null && tree.right == null){
    return true;
  }
  if(tree.left != null && tree.right != null){
    return (is_full_binary_tree(tree.left) && is_full_binary_tree(tree.right));
  }
  else{
    return false;
  }
}
void main(){
  var tree = Node(1);
  tree.left = Node(2);
  tree.right = Node(3);
  tree.left.left = Node(4);
  tree.left.right = Node(5);
  tree.left.right.left = Node(6);
  tree.right.left = Node(7);
  tree.right.left.left = Node(8);
  tree.right.left.left.right = Node(9);
  
  print(is_full_binary_tree(tree));
  print(depth_of_tree(tree));
  print("Tree is:\n");
  display(tree);
}""",
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
