void main(List<String> arguments) {
  String firstName = "Kristján";
  String lastName = "Kristjánsson";
  print("Hi $firstName $lastName");
  String fullName = firstName + " " + lastName;
  print("Hi $fullName");
  String SSN = "200689-2409";
  String fixSSN = SSN.replaceAll("-", "");
  //replaceAll er notað til þess að taka í burtu fyrri hlutan ss "-"
  int ssnLength = fixSSN.length;
  print(ssnLength);
  String message = "Hello World";
  String fixMessage = message.replaceAll("World", "NTV");
  print(fixMessage.toUpperCase());

  String birthDate = SSN.substring(0,6);
  print(birthDate);
  String email = "GunnArGeir@nTv.is";
  print(email.toLowerCase());
}