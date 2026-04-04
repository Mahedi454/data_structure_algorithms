void main() {
  Set<String> names = {"Mahedi", "Hasan", "Shihab"};
  print(names);

  print("First name is ${names.first}");
  print("Last name is ${names.last}");
  print("The names isEmpty ${names.isEmpty}");
  print("The length of names ${names.length}");

  print(names.contains("Hasan"));

  names.add("Mahinur");
  names.add("Hasan");
  names.add("Islam");
  names.add("Mahi");

  print(names);

  names.remove("Hasan");
  print(names);

  for(String name in names) {
    print(name);
  }

  print(names.elementAt(2));
}
