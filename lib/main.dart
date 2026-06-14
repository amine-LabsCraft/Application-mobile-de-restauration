import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(const BurgerQueenApp());
}

class BurgerQueenApp extends StatelessWidget {
  const BurgerQueenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Burger Queen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFE8759A),
          primary: const Color(0xFFE8759A),
        ),
        useMaterial3: true,
        fontFamily: 'Roboto',
      ),
      home: const HomeScreen(),
    );
  }
}
