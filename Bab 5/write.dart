import 'dart:io';

void main() {
  // open file
  File tes = File('test.txt');
  // write to file
  tes.writeAsStringSync('Ayam bakar taliwang.');
  print('Done.');
}