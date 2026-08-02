import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_todo_app/constants/app_colors.dart';
import 'package:flutter_todo_app/screens/sign_up_screen.dart';
import 'package:flutter_todo_app/widgets/common/app_background.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

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
                                      onPressed:() {
                                          Navigator.pop(context);
                                      } ,
                                      icon: Icon(Icons.arrow_circle_left_outlined),
                                ),
                              ),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                      const SizedBox(height: 50,),
                                      const Text(
                                          "Welcome Back",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25,
                                          ),    
                                      ),
                                      const SizedBox(height: 30,),
                                      Image.asset(
                                          "assets/images/SignIn.png",
                                      ),
                                      const SizedBox(height: 20,),
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: TextField(
                                            decoration: InputDecoration(
                                                hintText: "Enter your Email adress",
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
                                      const SizedBox(height: 10,),
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: TextField(
                                          decoration: InputDecoration(
                                              hintText: "Enter your password",
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
                                    const SizedBox(height: 40,),
                                    const Text(
                                        "Forget password ?",
                                        style: TextStyle(
                                            color: AppColors.primary,
                                        ),
                                    ),
                                    const SizedBox(height: 30,),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: AppColors.primary,
                                            fixedSize: Size(200, 50),
                                            foregroundColor: Colors.white,
                                        ),
                                        onPressed:(){
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context)=>SignUpScreen(),
                                                ),
                                            );
                                        },
                                        child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                                const Text(
                                                    "Sign In",
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight: FontWeight.bold,
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),
                                    const SizedBox(height: 15,),
                                    RichText(
                                        text: TextSpan(
                                            text: "Dont have an account ? ",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,   
                                            ),
                                            children:  [
                                                TextSpan(
                                                    text: "Sign Up",
                                                    style: TextStyle(
                                                        color: AppColors.primary,
                                                        fontWeight: FontWeight.bold,
                                                    ),
                                                    recognizer: TapGestureRecognizer()
                                                    ..onTap =(){
                                                        Navigator.pop(context);
                                                    }
                                                ),
                                            ]
                                        ),
                                    ),
                                  ],
                              )
                          ],
                      ),
                  ),
              ),
            ), 
        ),
    );
  }
}