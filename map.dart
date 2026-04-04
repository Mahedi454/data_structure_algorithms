void main(){
  Map<String, String> countryCapital = {
    "USA": "Washington DC",
    "Bangladesh": "Dhaka",
    "Pakistan": "Islamabad"
  };
  print(countryCapital);

  print(countryCapital["USA"]);

  countryCapital["Kuwait"] = "Kuwait City";
  print(countryCapital["Kuwait"]);

  countryCapital["Sri Lanka"] = "CTG";
  print(countryCapital);

  countryCapital["Sri Lanka"] = "Colombo";
  print(countryCapital);

  print(countryCapital.keys);
  print(countryCapital.values);

  print(countryCapital.containsKey("Bangladesh"));
  print(countryCapital.containsKey("Nepal"));
}
