import 'package:flutter/material.dart';

class TeksUtama extends StatelessWidget {
  final String teks1;
  final String teks2;

  const TeksUtama({super.key, required this.teks1, required this.teks2});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          teks1,
          textDirection: TextDirection.ltr,
        ),
        Text(
          teks2,
          textDirection: TextDirection.ltr,
          style: const TextStyle(
              fontSize: 45, fontWeight: FontWeight.bold, color: Colors.red),
        )
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(
      title: 'Halo Dunia',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Halo Dunia'),
        ),
        body: Center(
          child: Column(children: [
            TeksUtama(
              teks1: 'Halo',
              teks2: 'Dunia',
            ),
            TeksUtama(
              teks1: 'Apa kabar',
              teks2: 'Budi',
            ),
            TeksUtama(
              teks1: 'Apa kabar',
              teks2: 'Andi',
            ),
            TeksUtama(
              teks1: 'Apa kabar',
              teks2: 'Santi',
            ),
          ]),
        ),
        floatingActionButton: const FloatingActionButton(
          tooltip: 'Random',
          onPressed: null,
          child: Icon(Icons.refresh),
        ),
      )));
}
