void main(){
  //create a list
  List<int> myList = [1,2,3,4,5];
  //change an item in a list
  myList[0] = 25;

  //add to a list
  myList.add(6);

  //add multiple

  myList.addAll([2,3,4,5]);


  //insert at a specific location
  myList.insert(2, 66);


  // insert many
  myList.insertAll(0, [9,9,9,9]);

  //remove
  myList.remove(9);

  //remove at
  myList.removeAt(5);

  //sort the list
  myList.sort();

  //remove between 2 indexes
  myList.removeRange(0, 5);

  //remove last item
  myList.removeLast();


}