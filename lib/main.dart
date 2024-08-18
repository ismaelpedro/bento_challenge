import 'package:bento_challenge/features/home/views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BentoChallenge());
}

class BentoChallenge extends StatelessWidget {
  const BentoChallenge({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          foregroundColor: Colors.white,
        ),
      ),
      home: const HomeView(),
    );
  }
}
