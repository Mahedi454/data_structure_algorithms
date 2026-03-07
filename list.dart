void main() {
  List<int> nums = [2, 4, 8];
  nums[2] = 12;
  nums.add(7);
  print(nums);

  List<int> list = [9, 1, 3, ...nums];

  list.map((value) {
    return value * 2;
  }).toList();

  print(list);

  List<int> evenList = list.where((value) {
    return value.isEven;
  }).toList();

  print(evenList);
}
