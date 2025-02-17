void main(List<String> arguments) {
  String firstName = 'Kristján';
  String lastName = 'Kristjánsson';
  print('Hi $firstName $lastName');
  //Hér prentar hún út Kristján Kristjánsson
  String fullname = firstName + " " + lastName;
  print('Hi $fullname');

  int nameLength = fullName.length;
  print(nameLength)

  String SSN = '200689-2409';
  int ssnLength = SSN.length;
  print(ssnLength);

  String message = 'Hello World';
  String fixMessage = message

  String birthDate = SSN.substring(0,6);
  print(birtDate);


}