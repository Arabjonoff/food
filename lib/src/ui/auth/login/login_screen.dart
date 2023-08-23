import 'package:flutter/material.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Email address'
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password'
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: TextButton(onPressed: (){}, child: Text('Forgot passcode?',style: TextStyle(color: Colors.red),)),
          )
        ],
      ),
    );
  }
}
