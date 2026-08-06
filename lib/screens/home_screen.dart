import 'package:flutter/material.dart';
import 'package:flutter_todo_app/constants/app_colors.dart';
import 'package:flutter_todo_app/models/todo.dart';
import 'package:flutter_todo_app/screens/welcome_screen.dart';
import 'package:flutter_todo_app/widgets/common/app_background.dart';
import 'package:flutter_todo_app/widgets/common/home_background.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Todo> todos = [
    Todo(title: 'Study Flutter'),
    Todo(title: 'Learn Git', isCompleted: true),
    Todo(title: 'Build Todo App'),
    Todo(title: 'Build Todo App'),
    Todo(title: 'Build Todo App'),
    Todo(title: 'Build Todo App'),
    Todo(title: 'Build Todo App'),
    Todo(title: 'Build Todo App'),
    Todo(title: 'Build Todo App'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeBackground(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const SizedBox(height: 220),
              Row(
                children: [
                  SizedBox(width: 60),
                  Image.asset("assets/images/Home.png"),
                ],
              ),
              const SizedBox(height: 0),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "Todo Tasks.",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 0),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(12),
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 16,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: Column(
                    
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Dairy Tasks.",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context, 
                                  MaterialPageRoute(builder: (context) => WelcomeScreen()),
                                );
                              }, 
                              icon: Icon(Icons.add_circle_outlined),
                            ),
                          ],
                        ),
                      Expanded(
                        child: Scrollbar(
                          thumbVisibility: true,
                          child: ListView.builder(
                            itemCount: todos.length,
                            itemBuilder: (context, index) {
                              final todo = todos[index];
                        
                              return Row(
                                children: [
                                  Checkbox(
                                    value: todo.isCompleted,
                                    onChanged: (value) {
                                      setState(() {
                                        todo.isCompleted = value!;
                                      });
                                    },
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    todo.title,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      decoration: todo.isCompleted
                                          ? TextDecoration.lineThrough
                                          : TextDecoration.none,
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
