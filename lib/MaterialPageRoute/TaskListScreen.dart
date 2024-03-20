// task_list_screen.dart
import 'package:flutter/material.dart';

class TaskListScreen extends StatefulWidget {
  @override
  _TaskListScreenState createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
  List<Task> tasks = [
    Task(name: 'Task 1', description: 'Description 1', dueDate: '2022-01-10'),
    Task(name: 'Task 2', description: 'Description 2', dueDate: '2022-01-15'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task List'),
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              // Implement logout logic
              // For now, navigate to the LoginScreen
              Navigator.pushReplacementNamed(context, '/login');
            },
          ),
        ],
      ),
      body: TaskListView(tasks: tasks, onAddTask: _addTask),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to the task creation screen
          Navigator.pushNamed(context, '/task_creation').then((value) {
            // Handle the result after returning from task creation screen
            if (value != null && value is Task) {
              _addTask(value);
            }
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void _addTask(Task task) {
    setState(() {
      tasks.add(task);
    });
  }
}

class TaskListView extends StatefulWidget {
  final List<Task> tasks;
  final Function(Task) onAddTask;

  TaskListView({required this.tasks, required this.onAddTask});

  @override
  _TaskListViewState createState() => _TaskListViewState();
}

class _TaskListViewState extends State<TaskListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: (context, index) {
        return Dismissible(
          key: Key(widget.tasks[index].name),
          onDismissed: (direction) {
            setState(() {
              widget.tasks.removeAt(index);
            });
          },
          background: Container(
            color: Colors.red,
            alignment: Alignment.centerRight,
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Icon(
              Icons.delete,
              color: Colors.white,
            ),
          ),
          child: ListTile(
            title: Text(widget.tasks[index].name),
            subtitle: Text(widget.tasks[index].description),
            trailing: Text('Due: ${widget.tasks[index].dueDate}'),
            onTap: () {
              // Navigate to the task details screen
              Navigator.pushNamed(context, '/task_details', arguments: widget.tasks[index]);
            },
          ),
        );
      },
    );
  }
}

class Task {
  final String name;
  final String description;
  final String dueDate;

  Task({required this.name, required this.description, required this.dueDate});
}
