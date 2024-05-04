import 'package:flutter/material.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({super.key});
  static const String route = "SubscriptionScreen";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: SafeArea(
        child: Center(
          child: Text('Subscription Screen'),
        ),
      ),
    );
  }
}
