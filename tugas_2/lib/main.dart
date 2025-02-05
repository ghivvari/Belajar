import 'package:flutter/material.dart';

class TeksUtama extends StatelessWidget {

  final String teks1;
  final String teks2;

  const TeksUtama ({super.key, required this.teks1, required this.teks2});

  @override
  Widget build (BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.cyan[50],
        borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(
          color: Colors.black12,
          spreadRadius: 5,
          offset: Offset.fromDirection(-15,53),
          blurRadius: 5
        )]
      ),

  child:  Column (
    children: [
      Text(
      teks1,
      textDirection: TextDirection.ltr,
    ),
    Text(
      teks2,
      textDirection: TextDirection.ltr,
      style: const TextStyle(
        fontSize: 45,
        fontWeight: FontWeight.bold,
        color: Colors.red
      ),
    )
    ],)   
    );
  }
}

void main (){
  runApp(
    MaterialApp(
      title: 'Halo dunia',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('halo dunia'),
        ),
      body: Center(
        child: Column(
          children: [
            TeksUtama(
              teks1: 'Halo',
               teks2: 'Dunia'
            ),
              TeksUtama(
                teks1: 'apa kabar', 
                teks2 : 'Budi'
            ),
               TeksUtama(
                teks1: 'apa kabar', 
                teks2 : 'Andi'
            ),
              TeksUtama(
                teks1: 'apa kabar', 
                teks2 : 'Santi'
            ),
              
          ],
        ),
      ),
      floatingActionButton: const FloatingActionButton(
        tooltip: 'random',
        onPressed: null,
        child: Icon (Icons.refresh),
      ),
      ),
    )
  );
}