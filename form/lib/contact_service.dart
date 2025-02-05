import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class ContactService {
  //method untuk mengambil data dari local storage
  getData() async {
    //inisiasi class untuk menggunakan paket penyimpanan local storage
    SharedPreferences prefs = await SharedPreferences.getInstance();

    //mengambil list/array contacts di local storage
    List<String> itemStrings = prefs.getStringList('contacts') ?? [];

    //mapping data
    return itemStrings
        .map((item) => json.decode(item) as Map<String, dynamic>)
        .toList();
  }

  //method untuk menyimpan data ke local storage
  saveData(String name, String gender, String email, String phone,
      String facebook, String instagram) async {
    //inisiasi class untuk menggunakan paket penyimpanan local storage
    SharedPreferences prefs = await SharedPreferences.getInstance();

    //mengambil data dari localstorage dari list contacts
    List<String> dataList = prefs.getStringList('contacts') ?? [];

    //membuat variabel objek dengan data yang diisi melalui form
    Map<String, String> newData = {
      'id': DateTime.now().millisecondsSinceEpoch.toString(),
      'name': name,
      'gender': gender,
      'email': email,
      'phone': phone,
      'facebook': facebook,
      'instagram': instagram
    };

    dataList.add(jsonEncode(newData)); // Menambahkan data baru ke dalam daftar
    prefs.setStringList(
      'contacts',
      dataList,
    ); // Menyimpan daftar data ke local storage
  }
}