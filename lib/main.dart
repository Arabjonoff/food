import 'package:flutter/material.dart';
import 'package:food/src/ui/auth/tabbar_menu.dart';
import 'package:food/src/ui/menu/home/home_screnn.dart';
import 'package:food/src/ui/menu/main_screen.dart';
import 'package:food/src/ui/onboard/onboard_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: TabBarMenuScreen()
    );
  }
}

