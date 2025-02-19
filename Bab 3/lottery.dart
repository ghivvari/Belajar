import 'dart:math';

void gacha() {
  Random random = new Random();
  int randomNumber = random.nextInt(10); 
  print(randomNumber);

  int randomNumber2 = random.nextInt(10); 
  print(randomNumber2);

  int randomNumber3 = random.nextInt(10); 
  print(randomNumber3);

  if(randomNumber == randomNumber2 && randomNumber3 == randomNumber2 && randomNumber == randomNumber3){
    print("Gila menang");
  }
}

void main() {
  print("Ayo gacha");
  gacha();
}
