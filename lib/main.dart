import 'package:flutter/material.dart';
import 'package:prueba1/pages/detalles.dart';
import 'package:prueba1/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ghibli App',
      initialRoute: '/home',
      routes:  {
        '/home' : (_) => HomePage(),
        'detalles' : (_)=> Detalles(),
      },
    );
  }
}