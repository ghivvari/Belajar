void add(int angka1, int angka2, [int angka3=0]){
   int sum;
  sum = angka1 + angka2 + angka3;
   
   print("The sum is $sum");
}

void main(){
  add(10, 20);
  add(10, 20, 30);
}