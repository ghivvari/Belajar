import 'dart:io';

void main() {
  print("Masukkan umur: ");
  String? input = stdin.readLineSync();
  
  int umur;
  if (input != null && int.tryParse(input) != null) {
    umur = int.parse(input);
  } else {
    print("Input tidak valid. Harap masukkan angka.");
    return;
  }
    
  if (umur >= 70) {
    print("Kamu lansia.");
  } else {
    print("Kamu bukan lansia.");
  }
}
