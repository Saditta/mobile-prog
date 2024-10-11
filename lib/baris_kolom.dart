import 'package:flutter/material.dart';

class BarisKolom extends StatelessWidget {
  const BarisKolom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Baris dan Kolom'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 3, // 3 columns
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          children: List.generate(9, (index) {
            int row = (index ~/ 3) + 1;
            int column = (index % 3) + 1;
            return Center(
              child: Text(
                'Baris $row, Kolom $column',
                style: const TextStyle(fontSize: 16),
              ),
            );
          }),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: BarisKolom(),
  ));
}
