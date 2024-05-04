import 'package:flutter/material.dart';

class AnywayScreen extends StatelessWidget {
  const AnywayScreen({super.key});
  static const String route = "AnywayScreen";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: SafeArea(
        child: Center(
          child: Text('Anyway Screen'),
        ),
      ),
    );
  }
}
