import 'package:flutter/material.dart';
import 'package:flutter_todo_app/widgets/common/app_background.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackground(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsetsGeometry.all(24),
            child: Column(
              children: [

              ],
            ),
          )
        ),
      ),
    );
  }
}