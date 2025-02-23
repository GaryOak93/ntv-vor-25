import 'dart:convert';
import 'dart:developer';
import 'dart:io';

void main(List<String> arguments) {
  print('Hello');
  String name = 'Kristján';
  print (name);

  int number1 = 10;
  int number2 = 2;
  int sum = number1 + number2;
  print (sum);

  int number3 = 10;
  int number4 = 3;
  double result = number3 / number4;
  print (result.toStringAsFixed(3));

  print ((-1) + (5 * 5));
  print ((25 + 5) % 4);
  print (8 + ((6 * 4) / 2));
  print (2 + ((15 / 6) * 1) - (7 % 2));
}