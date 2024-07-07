import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TestApp(),
    );
  }
}

List imagePaths = [
  'img1.jpg',
  'img2.jpg',
  'img3.jpg',
  'img1.jpg',
  'img2.jpg',
  'img3.jpg',
  'img1.jpg',
  'img2.jpg',
  'img3.jpg'
];

class TestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Gallery',
            style: TextStyle(fontSize: 25, color: Colors.blueGrey),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(8),
          child: GridView.builder(
            itemCount: imagePaths.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset('images/assets/${imagePaths[index]}',
                    fit: BoxFit.cover),
              );
            },
          ),
        ));
  }
}
