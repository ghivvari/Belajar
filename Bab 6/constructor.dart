class Motor {
  String? merk;
  String? jenis;
  int? cc;

  Motor(String merk, String jenis, int cc) {
    print("Constructor called");

    this.merk = merk;
    this.jenis = jenis;
    this.cc = cc;
  }
}

void main() {
  Motor motor = Motor("Honda", "Supra", 1500);
  print("Merk motor: ${motor.merk}.");
  print("Jenis: ${motor.jenis}.");
  print("CC: ${motor.cc}.");
}
