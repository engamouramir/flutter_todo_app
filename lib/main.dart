import 'package:flutter/material.dart';
import 'package:flutter_todo_app/constants/app_colors.dart';
import 'screens/welcome_screen.dart';
void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const WelcomeScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.background,
      ),
    );
  }
}
      