void main() {
  Set<int> set1 = {5, 8, 2, 10};
  Set<int> set2 = {7, 12, 5, 6};
  Set<int> set3 = {9, 7, 5, 2};

  final intersectionSet1 = set1.intersection(set3);
  final intersectionSet2 = intersectionSet1.intersection(set2);

  print(intersectionSet1);
  print(intersectionSet2);
}
