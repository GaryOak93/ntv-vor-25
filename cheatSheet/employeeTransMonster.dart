import 'dart:math';

import 'package:ntv_vor_25/methods.dart';

void main() {
  company Bonus = company(id: 1,
      name: "Bónus",
      domainURL: "bonus.is",
      type: "Supermarket");
  company Kronan = company(id: 2,
      name: "Krónan",
      domainURL: "kronan.is",
      type: "Supermarket");
  company Steypustodin = company(id: 3,
      name: "Steypustöðin",
      domainURL: "steypustodin.is",
      type: "Building");
  List<company> myCompanyList = [];
  myCompanyList.add(Bonus);
  myCompanyList.add(Kronan);
  myCompanyList.add(Steypustodin);
  //Sækjum listann af names frá methods.dart
  List<String> employees = getNamesList();
  //Búum til tóman "employee" lista
  List<employee> employeesTransformed = [];
  //Loopum í gegnum listann
  for (String employeeName in employees) {
    //Búum til username með createUserName functioni fyrir neðan
    String username = createUserName(employeeName);
    var random = Random();
    int randomCompany = random.nextInt(3);
    int randomAge = random.nextInt(45);
    int age = randomAge + 20;
    company tempCompany = myCompanyList[randomCompany];
    //Búum til nýtt "employee" object, p.s. object er basically okkar
    //tegund af string eða int eða bool. bara aðeins flóknari og geta geympt meira
    employee newEmployee = employee(
        name: employeeName,
        age: age,
        username: username,
        employeer: tempCompany
    );
    //bætum þessum new employee í listan okkar sem við bjuggum til
    tempCompany.employees.add(newEmployee);
    employeesTransformed.add(newEmployee);

  }
  for (employee e in employeesTransformed) {
    if (e.employeer.id == 1) {
      print(e.name);
      print(e.age);
      print(e.username);
      print(e.employeer.name);
      print(e.employeer.type);
      print("_____________________");
    }
  }
}

//Hérna er employee classinn okkar
class employee {
  String name;
  int age;
  String username;
  company employeer;
  employee({required this.name, required this.age,
    required this.username, required this.employeer});
}
//Hérna er company classinn okkar
class company {
  int id;
  String name;
  String domainURL;
  String type;
  List<employee> employees = [];
  company({required this.id, required this.name,
    required this.domainURL, required this.type});

}
//Hérna er createUserName functionið okkar
String createUserName(String tempName) {
  List splitName = tempName.split(" ");
  String firstName = splitName[0];
  String lastName = splitName[1];
  String username = firstName + lastName.substring(0, 3);
  username = removeIcelandicLetters(username);
  username = username.toLowerCase();

  return username;
}

String removeIcelandicLetters(String input) {
  Map<String, String> icelandicToLatin = {
    'ð': 'd',
    'þ': 'th',
    'á': 'a',
    'é': 'e',
    'í': 'i',
    'ó': 'o',
    'ú': 'u',
    'ý': 'y',
    'ö': 'o',
    'Æ': 'Ae',
    'æ': 'ae',
    'Ð': 'D',
    'Þ': 'Th',
    'Á': 'A',
    'É': 'E',
    'Í': 'I',
    'Ó': 'O',
    'Ú': 'U',
    'Ý': 'Y',
    'Ö': 'O',
  };

  icelandicToLatin.forEach((key, value) {
    input = input.replaceAll(key, value);
  });

  return input;
}
