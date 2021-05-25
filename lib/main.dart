import 'package:flutter/material.dart';
import 'package:covid/views/principal_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Frase Aleatória',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Principal(),
    );
  }
}
