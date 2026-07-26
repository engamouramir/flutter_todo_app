import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                "Get things done with TODO",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 25),
              Text(
                "Lorem ipsum dolor sit amet,\nconsectetur adipisicing. Maxime,\n tempore! Animi nemo aut atque,\n deleniti nihil dolorem repellendus.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15, 
                ),  
              ),
              Spacer(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  fixedSize: Size(200, 50),
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 0,horizontal: 0),
                ),
                onPressed:() {}, 
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.access_alarm_sharp,
                      color: Colors.white,
                    ),
                    Text(
                      "Get started",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(width: 20),
                  ],
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ) 
      ),
    );
  }
}