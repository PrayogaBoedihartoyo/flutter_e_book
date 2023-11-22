import 'package:flutter/material.dart';
import '../../themes.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Card Page', style: semiBoldText20),
      ),
    );
  }
}
