import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
          style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
              color: Colors.blue.shade700),
        ),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                label: Text('Username'),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                label: Text('password'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
