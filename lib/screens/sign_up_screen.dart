import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_todo_app/constants/app_colors.dart';
import 'package:flutter_todo_app/constants/app_string.dart';
import 'package:flutter_todo_app/screens/sign_in_screen.dart';
import 'package:flutter_todo_app/screens/welcome_screen.dart';
import 'package:flutter_todo_app/widgets/common/app_background.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackground(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      onPressed:(){
                        Navigator.pop(context);
                      },
                      icon:const Icon(
                        Icons.arrow_circle_left_outlined,
                       ),
                      ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 50),
                      const Text(
                        AppString.welcomeSignUp,
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        "Let’s help you meet up your task",
                        style: TextStyle(
                          color: AppColors.primary,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(height: 40),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Enter your NAME",
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            contentPadding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const  EdgeInsets.all(10),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Enter your EMAIL address",
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const  EdgeInsets.all(10),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Create your Password",
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const  EdgeInsets.all(10),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Confirm your Password",
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                            contentPadding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                          ),
                        ),
                      ),
                    ],
                    ),
                    SizedBox(height: 110,),
                    Column(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primary,
                            fixedSize: Size(200 , 50),
                            foregroundColor: Colors.white,
                          ),
                          onPressed:() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context)=> const WelcomeScreen()),
                            );
                          }, 
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                AppString.signUp,  
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15,),
                        RichText(
                          text: TextSpan(
                            text: "Already have an account ? ",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            children: [
                              TextSpan(
                                text: "Singn In",
                                style: TextStyle(
                                  color: AppColors.primary,
                                  fontWeight: FontWeight.bold,
                                ),
                                recognizer: TapGestureRecognizer()
                                ..onTap = (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const SignInScreen(),),
                                  );
                                }
                              ),
                            ],
                          )),
                        const SizedBox(height: 20,),
                      ],
                    ),                
                ],
              ),
            )
          ),
        ),
      ),
    );
  }
}