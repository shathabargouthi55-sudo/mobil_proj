import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final List<String> tasks = [
    "Study Mobile",
    "Finish Report",
    "Submit Project",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task Manager"),
      ),

      body: tasks.isEmpty
          ? const Center(
              child: Text("No Tasks Yet"),
            )
          : ListView.builder(
              itemCount: tasks.length,

              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    child: Text("${index + 1}"),
                  ),

                  title: Text(tasks[index]),
                );
              },
            ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},

        child: const Icon(Icons.add),
      ),
    );
  }
}