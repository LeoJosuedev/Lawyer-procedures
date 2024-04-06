import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          //Home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
          ),

          //Procedures
          BottomNavigationBarItem(
            icon: Icon(Icons.document_scanner),
            label: 'Profile'
          ),

          //Settings
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings'
          ),

        ],),
    );
  }
}