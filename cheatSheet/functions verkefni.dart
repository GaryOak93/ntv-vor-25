import 'dart:io';

double calculateRectangleArea(double length, double width) {
  return length * width;
}

void main() {

  double length = 0.0;
  double width = 0.0;

  while (true) {
    print("What is the length of the rectangle?");
    try {
      length = double.parse(stdin.readLineSync()!);
      break;
    } catch (e) {
      print("Please enter a valid number for the length.");
    }
  }

  while (true) {
    print("What is the width of the rectangle?");
    try {
      width = double.parse(stdin.readLineSync()!);
      break;
    } catch (e) {
      print("Please enter a valid number for the width.");
    }
  }

  double area = calculateRectangleArea(length, width);

  if (area == area.toInt()) {
    print("The area of the rectangle is ${area.toInt()}");
  } else {
    print("The area of the rectangle is ${area.toStringAsFixed(2)}");
  }
}
