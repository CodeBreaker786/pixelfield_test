import 'package:flutter/material.dart';
import 'package:pixelfield_test/widgets/base_screen.dart';

class SplasScreen extends StatelessWidget {
  const SplasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/app_logo.png'), // Logo Image
            
          ],
        ),
      ),
    );
  }
}
