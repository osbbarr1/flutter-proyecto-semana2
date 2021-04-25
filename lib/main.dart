import 'package:flutter/material.dart';
import 'package:imc/page/indiceMasaCorporal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora IMC',
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}
