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

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Gunung Bromo merupakan salah satu destinasi wisata '
        'terkenal di Indonesia yang terletak di kawasan Taman Nasional '
        'Bromo Tengger Semeru, Jawa Timur. Gunung ini memiliki keindahan '
        'alam yang sangat memukau, terutama saat matahari terbit yang '
        'menampilkan pemandangan spektakuler dengan latar pegunungan dan '
        'lautan pasir yang luas. Selain itu, Gunung Bromo juga memiliki '
        'kawah aktif yang menjadi daya tarik utama bagi para wisatawan. '
        'Keunikan budaya masyarakat Suku Tengger yang masih menjaga tradisi '
        'juga menambah nilai wisata dari tempat ini.\n\n'
        'Aiska Oca Amalia / 244107060035',
        softWrap: true,
        textAlign: TextAlign.justify,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Aiska Oca Amalia, 244107060035',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/Gunung.jpeg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
  
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}