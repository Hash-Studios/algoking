const int MAX_SIZE = 10;

class ListQueue<T> {
  int count = 0;
  List queue = new List.filled(MAX_SIZE, null);
  bool hasElements() {
    if (queue.length == 0) {
      return false;
    } else {
      return true;
    }
  }

  void enque(T elment) {
    if (count == MAX_SIZE) {
      print("The queue is full!!!");
    } else {
      queue[count] = elment;
      count++;
    }
  }

  T deque() {
    late T result;
    if (count == 0) {
      print("The queue is empty!!!");
    } else {
      result = queue[0];
      for (int i = 0; i < queue.length - 1; i++) {
        queue[i] = queue[i + 1];
      }
    }
    return result;
  }
}

void main() {
  ListQueue<int> Queue = new ListQueue<int>();
  Queue.enque(12);
  Queue.enque(2);
  Queue.enque(7);
  print(Queue.queue);
  print("Enque:");
  var returnData = Queue.deque();
  print("$returnData\n");
  print("Enque:");
  returnData = Queue.deque();
  print("$returnData\n");
  print("Enque:");
  returnData = Queue.deque();
  print("$returnData\n");
  print("Now the queue is: " + (Queue.queue).toString());
}
