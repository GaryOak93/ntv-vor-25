void main(){
  //create a list
  List alphabet = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h'];

  //change an element

  //alphabet [0] = '7';


  //add to a list
  //alphabet.add('Bjarni ben');


  //add many to a list
  //alphabet.addAll(['1', '2', '3', '4']);

  //create an empty list
  List empty = [];
  print(empty);

  //insert at a specific index

  //alphabet.insert(3, 'Jón Jónsson');


  //insert many at a specific index

  alphabet.insertAll(0, (['Jói Jói', 'Bjarni bófi']));


  //remove from a list
  alphabet.remove('Jói Jói');

  //remove at an index

  alphabet.removeAt(0);


  //*bonus* find an element's position and remove at that index

  int a = alphabet.indexOf('a');
  print(a);
  //

  List nums = [5,4,3,2,1,9,8,7,6];
  List chars = ['a','b','d','g','f','e'];

  //sort the list
  print(chars);
  nums.sort();
  print(nums);


  //remove between 2 indexes
  nums.removeRange(2, 6);
print(nums);
}