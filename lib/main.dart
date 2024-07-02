import 'package:flutter/material.dart';
import '../screens/login_screen.dart';

void main() {
  runApp(const LoginForm());
}

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
