import 'dart:io';

void main(List<String> arguments) {
  bool validNumber = false;
  while (validNumber == false) {
    print("Skrifaðu símanúmerið þitt");
    String phoneNumber = stdin.readLineSync().toString();
    print('Þú skrifaðir $phoneNumber');
    if (phoneNumber.contains("´+354") == true ){
      phoneNumber = phoneNumber.replaceAll("+354", "");
      print('Heyrðu góði þú skrifaðir +354');
    }
    if (phoneNumber.length == 8) {
      print("Ég vona að þú hafir bara bætt við auka bili eða mínus og ég ætla taka það út");
      phoneNumber = phoneNumber.replaceAll("-", "");
      phoneNumber = phoneNumber.replaceAll(" ", "");
    }
    int? phoneNumberStorage = int.tryParse(phoneNumber);
    if (phoneNumber.length == 7 && phoneNumberStorage is int)
      print('$phoneNumber, ég mun ná að breyta þessu ef það eru bara tölustafir í $phoneNumber');
    {

      if (phoneNumber[0] != "1") {
        print('Þette er valid símanúmer');
        validNumber = true;

      }
      validNumber = true;
//    if(phoneNumber.contains("-")) {
//      print('Þetta $phoneNumber er með -');

    }
  }


//-Input: taka á móti símanúmeri
//-Valdiate phone number
//-Símanúmer eru 7 stafir .lengt?
//-Notendur eiga til að skrifa símanúmer með "-"
//-Notendur eiga til að skrifa símanumer með " "
//-Notendur eiga til að hafa country code með þ.e. +354
//-Símanúmer byrja ekki á 0,1,2,3
}