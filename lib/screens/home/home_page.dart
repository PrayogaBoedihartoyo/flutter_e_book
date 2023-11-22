import 'package:flutter/material.dart';
import '../../themes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Home Page', style: semiBoldText20),
      ),
    );
  }
}
