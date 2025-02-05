import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'First App',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Aplikasi Flutter'),
            backgroundColor: Colors.deepOrange,
          ),
          body: Column(children: <Widget>[
            Image.asset('flutter_assets/image/Flutter1.png'),
            const Text(
              'Belajar Flutter untuk Pemula',
              style: TextStyle(fontSize: 24, fontFamily: "serif", height: 2.0),
            ),
            const Text('Credit By : '),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Image.asset('flutter_assets/images/flutter2.png'),
                Image.asset('flutter_assets/images/flutter2.png')
              ],
            )
          ])),
    );
  }
}
