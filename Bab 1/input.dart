import 'dart:io';

void main() {
  print("Masukan Nama: ");
  String? name = stdin.readLineSync();
  print("Masukan Alamat: ");
  String? alamat = stdin.readLineSync();
  print("Nama anda ${name} anda tinggal di ${alamat}");
}
