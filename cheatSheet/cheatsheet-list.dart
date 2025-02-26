import 'package:test/expect.dart';

void main(){
  // create a list
  List names = ['john', 'hjalti', 'jón', 'gunnar'];
  print(names);

  //change an item in a list

  names[0] = 'jón';

  // add to a list

  names.add('Einar');
  print(names);

  //add multiple
  names.addAll(['inga sæland', 'kristrún frosta', 'Togga']);
  print(names);

  //insert at a specific location
  names.insert(0, 'Bjarni ben');
  print(names);

  //insert many
  names.insertAll(2, [1,2,30]);
  print(names);

  names.add([1,2,3]);
  print(names);

  //remove

  //names.remove('Bjarni ben');
  //print(names);
  //names.add('Bjarni ben');

  //remove at

  //names.removeAt(0);
  //print(names);


  int bjarnibenIndex = names.indexOf('Bjarni ben');
  print(bjarnibenIndex);
  names.removeAt(bjarnibenIndex);
  print(names);
  
}