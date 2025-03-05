import 'dart:io';
void main() {
  List<String> menu = [
    "Beikonborgari",
    "Ostborgari",
    "Kreppuborgari",
    "Bjarni Ben",
    "Barnaborgari"
  ];
  List<double> price = [2.899, 2.499, 1.999, 3.299, 1.299];
  List<int> order = [];

  bool forrit = true;

  while (forrit) {
    print("=== Matseðill ===\n");
    for (int i = 0; i < menu.length; i++) {
      print("${i + 1}. ${menu[i]} - ${price[i].toStringAsFixed(3)}");
    }
    print("\n=== Velkomin/n, hvað má bjóða þér? ===");
    print("1. Bæta við pöntun");
    print("2. Fjarlægja úr pöntun");
    print("3. Sýna heildar pöntun");
    print("4. Ljúka pöntun");

    String? input = stdin.readLineSync();

    if (input == "1") {
      print('Sláðu inn númer borgarans sem þú vilt bæta við pöntun:');
      String? input = stdin.readLineSync();
      int? addToOrder = int.tryParse(input ?? '');
      if (addToOrder != null && addToOrder > 0 &&
          addToOrder <= menu.length) {
        order.add(addToOrder - 1);
        print('Bætti ${menu[addToOrder - 1]} á pöntun');
      } else {
        print('Veldu borgara af matseðli');
      }
    } else if (input == "2") {
      print('Sláðu inn númer borgarans sem þú vilt fjarlægja úr pöntun:');
      String? input = stdin.readLineSync();
      int? removeFromOrder = int.tryParse(input ?? '');
      if (removeFromOrder != null && removeFromOrder > 0 &&
          removeFromOrder <= menu.length) {
        int burgerRemove = removeFromOrder - 1;
        if (order.contains(burgerRemove)) {
          order.remove(burgerRemove);
          print('Fjarlægði ${menu[burgerRemove]} úr pöntun.');
        } else {
          print('Þessi borgari er ekki í pöntun þinni');
        }
      } else {
        print("Rangt valið");
      }
    } else if (input == "3") {
      if (order.isEmpty) {
        print("Pöntun þín er tóm");
      } else {
        print("Heildar pöntun:");
        double total = 0;
        for (int i = 0; i < order.length; i++) {
          int burgerIndex = order[i];
          print(
              "${menu[burgerIndex]} - ${price[burgerIndex].toStringAsFixed(
                  3)} ");
          total += price[burgerIndex];
        }
        print('Heildarverð: ${total.toStringAsFixed(3)}');
      }
    } else if (input == "4") {
      forrit = false;
      print("Takk fyrir ");
    } else {
      print('Vitlaust valið, reyndu aftur');
    }
  }
}
