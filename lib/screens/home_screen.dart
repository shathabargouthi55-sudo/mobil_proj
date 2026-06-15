import 'package:flutter/material.dart';

import '../database/task_database.dart';
import '../models/task.dart';
import '../widgets/task_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TaskDatabase taskDatabase = TaskDatabase();

  @override
  void initState() {
    super.initState();

   
    taskDatabase.addTask(
      Task(
        title: 'Study Mobile',
        description: 'Read Flutter chapter',
        date: '15/06/2026',
      ),
    );

    taskDatabase.addTask(
      Task(
        title: 'Finish Report',
        description: 'Complete project report',
        date: '16/06/2026',
        isCompleted: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final tasks = taskDatabase.getTasks();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Task Manager'),
      ),

      body: tasks.isEmpty
          ? const Center(
              child: Text('No Tasks Yet'),
            )
          : ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return TaskCard(
                  task: tasks[index],
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