import 'package:cardapio/cardapio.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Universo Dos Lanches Rápidos',
        theme: ThemeData(
          primarySwatch: Colors.lime,
        ),
        home: Cardapio()
        );
  }
}
