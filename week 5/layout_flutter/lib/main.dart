import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32), // soal 3
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // soal 1
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8), // soal 2
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(color: Colors.grey), // soal 2
                ),
              ],
            ),
          ),
          Icon(
            Icons.star, // soal 3
            color: Colors.red, // soal 3
          ),
          const Text('41'), // soal 3
        ],
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Aiska Oca Amalia, 244107060035',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: Column(
          children: [
            titleSection,
          ],
        ),
      ),
    );
  }
}