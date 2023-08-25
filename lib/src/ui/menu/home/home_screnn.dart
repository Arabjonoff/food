import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length:6,child:Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(30)
          ),
          child: ListTile(
            onTap: (){},
            title: Text('Help'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ),
      ),
        drawer:Drawer()
    )
    );
  }
}
