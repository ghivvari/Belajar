class Motor {
  String? merk;
  String? jenis;
  int? cc;

  void display() {
    print("Merk motor: $merk.");
    print("Jenis: $jenis.");
    print("CC: $cc.");
  }
}

void main() {
  // Here animal is object of class Animal.
  Motor motor = Motor();

  motor.merk = "Honda";
  motor.jenis = "Supra";
  motor.cc = 1500;
  motor.display();
}
