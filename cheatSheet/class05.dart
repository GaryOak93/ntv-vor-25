void main(){
  //create a list

  List magicCards = ['Stomping ground', 'Polluted delta', 'Memnite', 'Bayou'];


  //change an element

  magicCards [3] = 'Pikachu';



  //add to a list

  magicCards.add('Primeval titan');

  //add many to a list
  
  magicCards.addAll(['Jace the mind sculptor', 'Liliana of the veil', 'Knight of the reliquary']);
  


  //create an empty list

  List empty = [];

  print(empty);

  //insert at a specific index

  magicCards.insert(0, ['Dark confidant']);


  //insert many at a specific index

  magicCards.insertAll(0, ['Force of will', 'Force of negation', 'Counterspell']);


  //remove from a list

  magicCards.remove('Force of will');

  //remove at an index

  magicCards.removeAt(0);
  print(magicCards);

  //*Bonus* find an element's position and remove at that index

  int stompinggroundIndex = magicCards.indexOf('Stomping ground');
  print(stompinggroundIndex);

  magicCards.removeAt(2);

  print(magicCards);
}