import 'dart:async';
import 'package:flutter/material.dart';
import 'login_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  void initState() {
    super.initState();
    // Menjalankan timer selama 3 detik dan kemudian berpindah ke halaman LoginPage
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/Painted Flower 03.png"), // Ganti "background.jpg" dengan nama file gambar background Anda di folder assets
                fit: BoxFit.cover, // Mengatur gambar agar menutupi seluruh background
              ),
            ),
          ),
          // Centered Content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Center Image
                Image.asset(
                  "assets/images/Ecinos.png", // Ganti "center_image.png" dengan nama file gambar Anda untuk ditampilkan di tengah
                  width: 150, // Ubah ukuran lebar gambar
                  height: 150, // Ubah ukuran tinggi gambar
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
