import 'dart:io';
void main(List<String> arguments) {
  /*int personAge = 17;
  int driverLicenceAge = 17;
  bool doesPersonHaveDriversLicense = false;
  print(personAge);
  if (personAge == driverLicenceAge && doesPersonHaveDriversLicense == true) {
    print('Þú mátt keyra');
  } else if(personAge >= driverLicenceAge && doesPersonHaveDriversLicense == false) {
    print('Þú mátt hringja í ökukennara og byrja að læra að keyra');
  }
  else {
    print('takt þú strætó.');
  }

  if(!(5>7)) {
    print('This is true');
  }*/

  bool authenticated = false;
  while (authenticated == false) {
    String myPassword = 'MasterOfTheWorld123!';
    String username = 'admin';

    print('Enter your username');
    String loginUser = stdin.readLineSync().toString();
    print('Enter your password');
    String loginPassword = stdin.readLineSync().toString();

    if (loginUser == username && loginPassword == myPassword) {
      print('You are in. Welcome');
      authenticated = true;
    } else {
      print('User or password incorrect');
      print('Please try again');
    }
  }
}