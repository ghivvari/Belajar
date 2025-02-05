import 'package:flutter/material.dart';
import 'package:form/contact_service.dart';
import 'main.dart';

class AddForm extends StatefulWidget {
  const AddForm({super.key});
  @override
  State<AddForm> createState() => _AddFormState();
}

class _AddFormState extends State<AddForm> {
  //inisialisasi variabel
  final _formKey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController facebook = TextEditingController();
  TextEditingController instagram = TextEditingController();

  //inisialisasi class
  ContactService contactService = ContactService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transaction Form'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Form(
          // key adalah kunci unik untuk mengidentifikasi suatu form
          // di bawah key ini tambahkan widget sesuai selera kalian
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Name'),
                controller: name,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter the name';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 15,
              ),
              //bentuk dropdown select dengan dua pilihan
              DropdownButtonFormField<String>(
                items: ['Male', 'Female'].map((String option) {
                  return DropdownMenuItem<String>(
                    value: option,
                    child: Text(option),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    gender.text = newValue!;
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Gender',
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                controller: email,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter the email';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Phone'),
                controller: phone,
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter the phone number';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Facebook'),
                controller: facebook,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter the email';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Instagram'),
                controller: instagram,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter the instagram';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  //jika validasi berhasil maka jalankan perintah di bawahnya
                  //jika tidak maka tampilkan pesan kesalahan di tiap formnya
                  if (_formKey.currentState!.validate()) {
                    contactService.saveData(
                      name.text,
                      gender.text,
                      email.text,
                      phone.text,
                      facebook.text,
                      instagram.text,
                    );

                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            HomeScreen(), // Gantilah dengan widget MainScreen Anda.
                      ),
                      (Route<dynamic> route) =>
                          false, // Ini akan menghapus semua halaman sebelumnya dari tumpukan navigasi.
                    );
                  }
                },
                child: Text('Submit Button'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
