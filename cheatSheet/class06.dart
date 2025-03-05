import 'dart:math';
void main() {
  //1. store a name of a few of your friends in a list called 'names'
  //Print each person's name, one at a time (using a loop
/*
  List<String> names = ["Orri", "Steve", "Victor", "Kolbeinn"];

  for(String name in names){
    print(name);
  }

  print("Vinir mínir í röð");
  for (int i = 0; i < names.length; i++){
    print('${i+1} ${names[i]}');
  }
 */
  //2. use the list/a copy of the list from the previous exercise
  // but instead of printing each person's name, print a message to them
  // the text of each message should be the same, but each message should be personalized with the person's name
/*
  for(String name in names){
    print('Halló ${name} you are my 2nd best friend');
  }
*/
  //3. create a shopping list. Make a list which includes at least five items you would like to buy.
  // Then print your list in a nicely formatted manner

  List<String> groceryList = [
    "pulsur",
    "pulsubrauð",
    "tómatsósa",
    "remúlaði",
    "rúsínur"
  ];

  print("==== GROCERY LIST ====");
  for (int i = 0; i < groceryList.length; i++) {
    print("${i + 1} - ${groceryList[i]}");
  }

  //4. change your shopping list. Your preferred brand of one of the items is no longer sold
  //so you need to adjust your list
  // add a statement which prints the item that is no longer sold
  // replace that item with a different item

  print("===========");
  String discontinued = "rúsínur";
  print("${discontinued} is not in stock");
  int discontinuedIndex = groceryList.indexOf("rúsínur");
  groceryList.removeAt(discontinuedIndex);
  groceryList.add("appelsína");
  print("updated grocerylist");
  for(String updatedItem in groceryList){
    print(updatedItem);
  }



// 5. you are having a party, so you need items which were not ready on your list.
// Think of three more things you need to buy for the party.
// Re-use the earlier program

  List<String> partyItems = ["blöðrur", "confetti", "áfengi"];

  //print a statement that you are adding items to the list for the party. Print the list
  print("We are adding party items to the list");
  print(partyItems);

  //Use insert() to add one new item to the beginning of your list. print the list
  groceryList.insert(0, partyItems[0]);
  print(groceryList);

  int halfLength = (groceryList.length / 2).floor();

  //use insert() to add one new item to the middle of your list. Print the list
  groceryList.insert(halfLength, "camera booth");
  print(groceryList);

  // use add() to add one new item to the end of your list
  groceryList.add("snakk");
  print(groceryList);

  //remove the fourth item on your list permanently. print the list
  groceryList.removeAt(3);
  print(groceryList);

  //sort() the final list and print it
  groceryList.sort();
  print(groceryList);
}




