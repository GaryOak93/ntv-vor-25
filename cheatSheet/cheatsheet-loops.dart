// ** LOOPS **
void main(){
/*
// for loop

for(int i = 1; i<= 10; i++){
  print('Kristján');
}

List animals = ['Lion', 'Pig', 'Cow', 'Hjalti'];


// for in

for(String animal in animals){
  print(animal);
  print(animals);
}

// while

  int numb = 5;
  while(numb >0){
    numb--;
    print(numb);
  }



// do while
  do{
    numb--;
    print(numb);
  }
  while(numb > 0);
*/
//Take a list and write a program that prints out all the
//elements of the list that are less than 5
/*
  List numbs = [1,2,3,4,5,6,7,8,32,234,4324];

  for(int num in numbs){
    if(num < 5){
      print(num);
    }
  }
*/
/*
  for(int i = 0; i < numbs.length; i++){
    if(numbs[i] > 9){
      for(int j = 0; j < numbs[j].length; i++){
        if (numbs[i][j] == 4){
          print(numbs[i][4]);
        }

      }
    }
  }
  */
//take two lists and write a program that returns a list that contains only the
// elements that are common between them (without duplicates)

  List numbs = [1,2,3,4,5,6,7,8,32,234,4324];
  List numbs2 = [1,2,3,5,7,89,4,3,21,4324];
  List commonNumbs = [];

  for(int i in numbs){
    for(int j in numbs2){
      if(i == j){
        commonNumbs.add(i);
      }
    }
  }
  print(commonNumbs);

}