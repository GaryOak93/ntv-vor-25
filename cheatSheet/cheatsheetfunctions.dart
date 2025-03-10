import 'dart:io';

void main() {
  /*print("The light bulb is.....");*/
  bool myLightSwitch = true;
  while(true) {
    myLightSwitch = turnOnOrOff(myLightSwitch);
    displayLightBulbStatus(myLightSwitch);
    print("Should we check again?");
    stdin.readLineSync();
  }
  /*turnOnOrOff(myLightSwitch);
  String onOrOff = "";
  if (myLightSwitch == true) {
    onOrOff = "ON!";
  }else {
    onOrOff = "OFF!";
  }
  print(onOrOff);*/
}

bool turnOnOrOff(bool lightSwitch) {
  return !lightSwitch;
 /*
  bool result;
  if (lightSwitch == true) {
    result = false;
  }else {
    result = true;
  }


  return result;*/
}
  void displayLightBulbStatus (bool lightSwitch) {
    if (lightSwitch == true) {
      print("The light is ON");
    }else {
      print("The light is");
    }
    print(lightSwitch ? "On" : "Off");
  }