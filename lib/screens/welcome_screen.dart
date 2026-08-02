import 'package:flutter/material.dart';
import 'package:flutter_todo_app/constants/app_colors.dart';
import 'package:flutter_todo_app/constants/app_string.dart';
import 'package:flutter_todo_app/screens/sign_up_screen.dart';
import 'package:flutter_todo_app/widgets/common/app_background.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackground( 
      child :SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                SizedBox(height: 100),
                Image.asset(
                  "assets/images/Welcome.png"
                ),
                SizedBox(height: 50),
                Text(
                  AppString.welcomeTitle,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 25),
                Text(
                  AppString.welcomeDescription,             
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15, 
                  ),  
                ),
                Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    fixedSize: Size(200, 50),
                    foregroundColor: Colors.white,
                  ),
                  onPressed:() {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context)=> const SignUpScreen(),
                      ),
                    );
                  }, 
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        AppString.getStarted,  
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ), 
        ),
      ),  
    );
  }
}