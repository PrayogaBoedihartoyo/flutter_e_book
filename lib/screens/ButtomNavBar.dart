import 'package:flutter/material.dart';

class ButtomNavBar extends StatefulWidget {
  const ButtomNavBar({super.key});

  @override
  State<ButtomNavBar> createState() => _ButtomNavBarState();
}

class _ButtomNavBarState extends State<ButtomNavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget customBottomNav() {
      return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (i) {
          setState(() {
            _selectedIndex = i;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/icon-home.png',
              width: 20,
              color: _selectedIndex == 0 ? Colors.green : Colors.grey,
            ), label: '', ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/icon-save.png',
              width: 14,
              color: _selectedIndex == 1 ? Colors.green : Colors.grey,
            ), label: '', ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/icon-card.png',
              width: 20,
              color: _selectedIndex == 2 ? Colors.green : Colors.grey,
            ), label: '', ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/icon-user.png',
              width: 18,
              color: _selectedIndex == 3 ? Colors.green : Colors.grey,
            ), label: '', ),
        ],
      );
    }

    return Scaffold(
      bottomNavigationBar: customBottomNav(),
    );
  }
}
