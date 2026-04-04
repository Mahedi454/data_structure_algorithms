void main() {
  List<int> list = [5, 10, 6, 2];

  var changedList = list.map((x) {
    return x * 3;
  }).toList();

  print(changedList);

  changedList[3] = 9;
  print(changedList);

  print(changedList.contains(6));
  print(changedList.contains(30));

  changedList.add(12);
  changedList.add(5);
  print(changedList);

  List<int> odd = changedList.where((x) {
    return x.isOdd;
  }).toList();

  print(odd);
}
