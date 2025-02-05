import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Startup Name Generator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RandomWords(), // Panggil widget RandomWords sebagai home
    );
  }
}

class RandomWords extends StatefulWidget {
  const RandomWords({super.key});

  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final List<WordPair> _suggestions = <WordPair>[]; // List untuk menampung kata-kata random
  final TextStyle _biggerFont = const TextStyle(fontSize: 18); // Gaya teks

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Startup Name Generator'),
      ),
      body: _buildSuggestions(),
    );
  }

  Widget _buildSuggestions() {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (BuildContext context, int i) {
        if (i.isOdd) return const Divider(); // Garis pembatas antar item

        final int index = i ~/ 2; // Menghitung indeks
        if (index >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10)); // Generate 10 kata random
        }
        return _buildRow(_suggestions[index]);
      },
    );
  }

  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(
        pair.asPascalCase, // Menampilkan kata-kata dalam format PascalCase
        style: _biggerFont,
      ),
    );
  }
}