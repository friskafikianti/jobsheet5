import 'package:flutter/material.dart';

class TeksUtama extends StatelessWidget {
  final String teks1;
  final String teks2;
  final bool highlight;

  TeksUtama({
    required this.teks1,
    required this.teks2,
    this.highlight = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: highlight ? Colors.green : Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,  // Set the alignment of the column to start (left)
        children: [
          Text(
            teks1,
            textAlign: TextAlign.left,
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Text(
            teks2,
            textAlign: TextAlign.left,
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
          Divider(
            color: Colors.black,
            thickness: 2,
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Absen Mahasiswa',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Absen Mahasiswa'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            TeksUtama(
              teks1: '1. Ummu Hanifah',
              teks2:    'NIM  : STI202102563',
            ),
            TeksUtama(
              teks1: '2. Titin Sulistiyaningsih',
              teks2:    'NIM  : STI202102566',
            ),
            TeksUtama(
              teks1: '3. Friska Fikianti',
              teks2:    'NIM  : STI202102568',
              highlight: true,
            ),
            TeksUtama(
              teks1: '4. Musafa Ali',
              teks2:    'NIM  : STI202102588',
            ),
            TeksUtama(
              teks1: '5. Nanda Rosenatu Fahira',
              teks2:    'NIM  : STI202102598',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
