import 'dart:io';
import 'dart:math';

void main(){
  Random random = Random();
  int randomNumber = random.nextInt(20);
  print("Guess a number!");
  print("Print the number you guessed : ");
  int guess = int.parse(stdin.readLineSync()!);
  
  while (guess != randomNumber) {
     if (guess < randomNumber){
      print("Wrong guess, number is greater than $guess");
      print("Print the number you guessed : ");
      guess = int.parse(stdin.readLineSync()!);
    } else if (guess > randomNumber){
      print("Wrong guess, the number is smaller than $guess");
      print("Print the number you guessed : ");
     guess = int.parse(stdin.readLineSync()!);
    } 
  } 
  if (guess == randomNumber) {
   print("Correct guess!");
  }
}