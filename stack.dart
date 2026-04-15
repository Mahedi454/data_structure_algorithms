void main() {
  final stack = Stack<int>();
  stack.push(10);
  stack.push(20);
  stack.push(30);
  print(stack); // Output: ---Top---\n30\n20\n10\n---------
  print(stack.peek()); // Output: 30
  print(stack.pop()); // Output: 30 
  print(stack); // Output: ---Top---\n20\n10\n---------

  try{
    stack.peek();
  }catch(e){
    print("Stack is empty");
    stack.push(40);
    print(e.toString());
  }        
}

class Stack<T> {
  final List<T> _items = [];

  void push(T value) {
    _items.add(value);
  }

  T pop() {
    if  (isEmpty) {
      throw Exception('Stack is empty');
    }
    return _items.removeLast();
  }

  T peek() {
    if  (isEmpty) {
      throw Exception('Stack is empty');
    }
    return _items.last;
  }

  bool get isEmpty => _items.isEmpty;
  bool get isNotEmpty => _items.isNotEmpty;

  int get length => _items.length;

  @override
  String toString() {
    return '---Top---\n'
        '${_items.reversed.join('\n')}\n'
        '---------';
  }
}
