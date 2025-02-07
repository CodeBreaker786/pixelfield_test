import 'package:flutter/material.dart';

class BaseScreen extends StatelessWidget {
  final Widget child;

  const BaseScreen({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/background_design.png', // Background Image
              fit: BoxFit.cover,
            ),
          ),
          child, // Your actual screen content
        ],
      ),
    );
  }
}
