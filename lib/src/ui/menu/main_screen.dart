import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}


List<Widget> _screen = [
  Container(
    color: Colors.black,
  ),
  Container(
    color: Colors.yellow,
  ),
  Container(
    color: Colors.red,
  ),
  Container(
    color: Colors.blue,
  ),
];
int _currentIndex = 0;
class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int i){
          setState(() {
            _currentIndex = i;
          });
        },
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.red,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home')
        ],
      ),
      body: _screen[_currentIndex],
    );
  }
}
