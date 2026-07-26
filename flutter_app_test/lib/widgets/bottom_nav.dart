import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: 0,
      destinations: const [

        NavigationDestination(
          icon: Icon(Icons.home),
          label: "Home",
        ),

        NavigationDestination(
          icon: Icon(Icons.code),
          label: "Practice",
        ),

        NavigationDestination(
          icon: Icon(Icons.person),
          label: "Profile",
        ),
      ],
    );
  }
}