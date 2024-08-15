import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';

import '../routes.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _userNameController,
              decoration: InputDecoration(
                label: Text('Username'),
              ),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                label: Text('password'),
              ),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              if(_userNameController.text != RouterConfiguration.userName){
                Fluttertoast.showToast(msg: 'Incorrect Username');
                return;
              }
              if(_passwordController.text != RouterConfiguration.password){
                Fluttertoast.showToast(msg: 'Incorrect Password');
                return;
              }
              RouterConfiguration.isLoggedIn = true;
              context.goNamed(Routes.home);
            }, child: Text('Login'))
          ],
        ),
      ),
    );
  }
}
