import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 300,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Colors.blueGrey,
        ),
        child: const Center(
          child: Text(
            'Login',
            style: TextStyle(
                fontSize: 16, fontFamily: 'Rubik Medium', color: Colors.white),
          ),
        ));
  }
}
