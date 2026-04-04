void main(){
  List<int> list1 = [5, 8, 2, 10];
  int target = 10;

  Map<int, int> numMap = {};

  for(int i = 0; i < list1.length; i++){
    int diff = target - list1[i];

    if(numMap.containsKey(diff)){
      print("Two indices are ${numMap[diff]}, $i");
      return;
    }
    numMap[list1[i]] = i;
  }
  print("Not Found");
}