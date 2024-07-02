import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Welcome",
              style: TextStyle(
                fontSize: 40,
                fontFamily: 'Oswald',
                fontWeight: FontWeight.bold,
              ),
            ),
            Image.asset(
              'images/pexels-camille-c-137933427-10547966.jpg',
              width: 400,
              height: 300,
            ),
          ],
        ),
      ),
    );
  }
}
