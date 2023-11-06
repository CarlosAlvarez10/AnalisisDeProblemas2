import 'package:flutter/material.dart';
import 'package:practica_laboratorio_4/widgets/clase1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tarea',
      home: principal(),
    );
  }
}
