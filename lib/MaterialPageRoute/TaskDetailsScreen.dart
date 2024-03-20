// task_details_screen.dart
import 'package:flutter/material.dart';
import 'package:task_manager/MaterialPageRoute/TaskListScreen.dart';

class TaskDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Extract the task data from the arguments
    final Task task = ModalRoute.of(context)!.settings.arguments as Task;

    return Scaffold(
      appBar: AppBar(
        title: Text('Task Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Task Name: ${task.name}', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text('Description: ${task.description}'),
            SizedBox(height: 8),
            Text('Due Date: ${task.dueDate}'),
          ],
        ),
      ),
    );
  }
}

class Task {
  final String name;
  final String description;
  final String dueDate;

  Task({required this.name, required this.description, required this.dueDate});
}
