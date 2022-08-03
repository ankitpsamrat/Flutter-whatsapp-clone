import 'package:flutter/material.dart';
import 'package:whatsapp/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static const routeName = '/login-screen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Enter Your Phone Number'),
        backgroundColor: backgroundColor,
      ),
      body: Column(
        children: [
          Text('Please verify your number'),
          SizedBox(height: 10),
          TextButton(
            onPressed: () {},
            child: Text('data'),
          ),
        ],
      ),
    );
  }
}
