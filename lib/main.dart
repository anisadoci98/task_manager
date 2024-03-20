// main.dart
import 'package:flutter/material.dart';
import 'package:task_manager/MaterialPageRoute/LoginScreen.dart';
import 'package:task_manager/MaterialPageRoute/SignUp.dart';
import 'package:task_manager/MaterialPageRoute/TaskCreationScreen.dart';
import 'package:task_manager/MaterialPageRoute/TaskDetailsScreen.dart';
import 'package:task_manager/MaterialPageRoute/TaskListScreen.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:firebase_core/firebase_core.dart';
import '/firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';




Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _initHive();

  //Connection between my Flutter app and Firebase project
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task MNG',
      initialRoute: '/login',
      routes: {
        '/signup' : (context) => Signup(),
        '/login': (context) => LoginScreen(),
        '/task_list': (context) => TaskListScreen(),
        '/task_creation': (context) => TaskCreationScreen(),
        '/task_details': (context) => TaskDetailsScreen(),
      },
    );
  }
}
Future<void> _initHive() async{
  await Hive.initFlutter();
  await Hive.openBox("login");
  await Hive.openBox("accounts");
}
