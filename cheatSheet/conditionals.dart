import 'dart:io';

void main() {

  //GRADING

  print("==== GRADING Program ====");
  stdout.write("Pick a number between 1-100\n");
  String? input = stdin.readLineSync();

  try {
    int score = int.parse(input!);
    if (score < 1 || score > 100) {
      print("invalid input, please enter a number between 1-100");
    } else {
      if (score >= 90) {
        print("Grade: A");
        print("Good job");
      } else if (score >= 80) {
        print("Grade: B");
        print("Good job!");
      } else if (score >= 70) {
        print("Grade: C");
        print("Good enough..");
      } else if (score >= 60) {
        print("Grade: D");
        print("needs improvement");
      } else {
        print("Grade: F");
        print("Fail");
      }
    }
  }catch(e){
    print("Error");
  }
/*
  bool isNotLoading = false;

  int numberrr = 6;

  // Turnery operator
  (numberrr > 5) ? print("numberrr is begger than 5") : print("numberrr is smaller than 5");
  // if else
  if(numberrr > 5) {
    print("numberrr is bigger than 5");
  }else {
    print("numberrr is smaller than 5");
  }
  */
  // && og ||
  /*
  int num = 5;

  if(num > 1 && num < 10){
    print("true");

  }

   */
}

