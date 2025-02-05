import 'package:flutter/material.dart';

class StateTeksUtama extends State<TeksUtama> {
  var listname2 = [
    'bulan ke 1',
    'bulan ke 2',
    'bulan ke 3',
    'bulan ke 4',
    'bulan ke 5',
    'bulan ke 6',
    'bulan ke 7',
    'bulan ke 8',
    'bulan ke 9',
    'bulan ke 10',
    'bulan ke 11',
    'bulan ke 12',
  ];
  var listname = [
    'Januari',
    'Febuari',
    'Maret',
    'April',
    'Mei',
    'Juni',
    'Juli',
    'Agustus',
    'September',
    'Oktober',
    'November',
    'Desember',
  ];
  var listwarna = [
    Colors.red,
    Colors.purple,
    Colors.teal,
    Colors.lime,
    Colors.indigo,
    Colors.deepPurple,
    Colors.cyan,
    Colors.blue,
    Colors.yellow,
  ];
  int index = 0;

  void incrementIndex() {
    setState(() {
      index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.cyan[50],
            borderRadius: BorderRadius.circular(100),
            boxShadow: [
              BoxShadow(
                  color: Colors.black12,
                  spreadRadius: 5,
                  offset: Offset.fromDirection(-5.5, 6.0),
                  blurRadius: 5)
            ]),
        child: Column(
          children: [
            const Text(
              'Bulan',
              textDirection: TextDirection.ltr,
            ),
            Text(
              listname[index % listname.length],
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: listwarna[index % listwarna.length]),
            ),
            Text(
              listname2[index % listname2.length],
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: listwarna[index % listwarna.length]),
            )
          ],
        ));
  }
}

class TeksUtama extends StatefulWidget {
  final state = StateTeksUtama();

  TeksUtama({super.key});

  @override
  State<StatefulWidget> createState() => state;
}

void main() {
  TeksUtama teksUtama = TeksUtama();

  runApp(MaterialApp(
      title: '2024',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tahun 2024'),
        ),
        body: Center(
          child: Column(
            children: [teksUtama],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Random',
          onPressed: teksUtama.state.incrementIndex,
          child: Icon(Icons.refresh),
        ),
      )));
}
