import 'package:flutter/material.dart';
import 'package:flutter_todo_app/models/todo.dart';
import 'package:flutter_todo_app/widgets/common/app_background.dart';

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
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBackground(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: 90,),
                    Image.asset("assets/images/Home.png"),
                  ],
                ),
                const SizedBox(height: 15,),
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
                const SizedBox(height: 16,),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(12),
                    padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: ListView.builder(
                      itemCount: todos.length,
                      itemBuilder: (context, index) {
                        final todo = todos[index];
                      
                        return  Row(
                          children: [
                            Checkbox(
                              value: todo.isCompleted,
                              onChanged: (value) {
                                setState(() {
                                  todo.isCompleted = value!;
                                });
                              }
                            ),
                            const SizedBox(width: 10,),
                            Text(
                              todo.title,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                decoration: todo.isCompleted ? TextDecoration.lineThrough : TextDecoration.none,
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
    ),
    );
  }
}