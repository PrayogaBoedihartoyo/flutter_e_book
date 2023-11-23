import 'package:e_book_app/screens/save/save_page.dart';
import 'package:e_book_app/screens/user/user_page.dart';
import 'package:flutter/material.dart';

import 'card/card_page.dart';
import 'home/home_page.dart';

class ButtomNavBar extends StatefulWidget {
  static const nameRoute = '/';
  const ButtomNavBar({super.key});

  @override
  State<ButtomNavBar> createState() => _ButtomNavBarState();
}

class _ButtomNavBarState extends State<ButtomNavBar> {
  int _selectedIndex = 0;
  final _screens = [
    const HomePage(),
    const SavePage(),
    const CardPage(),
    const UserPage(),
  ];
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
      body: Stack(
        children: _screens.asMap().map((i, screen) => MapEntry(
          i, Offstage(
            offstage: _selectedIndex != i,
            child: screen,
          ),
        )).values.toList(),
      ),
    );
  }
}
