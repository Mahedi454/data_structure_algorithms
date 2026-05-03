void main() {
  LinkedList<int> list = LinkedList();
  list.push(10);
  list.push(20);
  list.push(30);
  print(list);

  list.append(40);
  list.append(50);
  print(list);

  list.insertAt(value: 25, index: 2);
  list.insertAt(value: 35, index: 4);
  print(list);

  list.removefront();
  print(list);
  list.removeLast();
  print(list);  
  list.removeAt(2);
  print(list);
}

class Node<T> {
  T value;
  Node<T>? next;

  Node({required this.value, this.next});

  @override
  String toString() {
    if (next == null) return "$value";
    return '$value -> ${next.toString()}';
  }
}

class LinkedList<T> {
  Node<T>? head;
  Node<T>? tail;

  bool get isEmpty => head == null;

  void push(T value) {
    final newNode = Node(value: value);
    if (isEmpty) {
      head = newNode;
      tail = newNode;
      return;
    }
    newNode.next = head;
    head = newNode;
  }

  void append(T value) {
    final newNode = Node(value: value);
    if (isEmpty) {
      push(value);
      return;
    }
    tail?.next = newNode;
    tail = newNode;
  }

  Node<T>? nodeAt(int index) {
    var currNode = head;
    var currIndex = 0;

    while (currNode != null && currIndex < index) {
      currNode = currNode.next;
      currIndex += 1;
    }
    return currNode;
  }

  void insertAt({required T value, required int index}) {
    Node<T>? node = nodeAt(index - 1);
    if (node == tail) {
      append(value);
      return;
    }
    final newNode = Node(value: value);
    newNode.next = node!.next;
    node.next = newNode;
  }

  T? removefront() {
    final value = head?.value;
    head = head?.next;
    if(isEmpty){
      tail = null;
    }
    return value;
  }

  T? removeLast() {
    if(head?.next == null){
      return removefront();
    }
    var currNode = head;
    while (currNode?.next != tail) {
      currNode = currNode?.next;
    }
    final value = tail?.value;
    tail = currNode;
    tail?.next = null;
    return value;
  }

  T? removeAt(int index) {
    Node<T>? node = nodeAt(index - 1);

    final nodeToRemove = node?.next;

    final value = nodeToRemove?.value;
    if (nodeToRemove == tail) {
      tail = node;
    }
    node?.next = nodeToRemove?.next;
    return value;
  }

  @override
  String toString() {
    bool isEmpty = this.isEmpty;
    if (isEmpty) return "Empty List";
    return head.toString();
  }
}
