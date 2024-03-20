// login_screen.dart
import 'package:flutter/material.dart';
import 'package:task_manager/MaterialPageRoute/SignUp.dart';
import 'package:task_manager/MaterialPageRoute/TaskListScreen.dart';

class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
      body: SingleChildScrollView(
          child: LoginForm()),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

// _LoginFormState in login_screen.dart
// ...

class _LoginFormState extends State<LoginForm> {
  String username = '';
  String password = '';
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(

        children: [
          const SizedBox(height: 150),
          Text(
            "Welcome ",
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(height: 10),
          Text(
            "Login to your account",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 60),
          TextFormField(
            onChanged: (value) {
              setState(() {
                username = value;
              });
            },
            decoration: InputDecoration(labelText: 'Email',
              prefixIcon: const Icon(Icons.person_sharp),),

          ),
          TextFormField(
            keyboardType: TextInputType.visiblePassword,
            onChanged: (value) {
              setState(() {
                password = value;
              });
            },
            obscureText: _obscurePassword,
            decoration: InputDecoration(labelText: 'Password',
                prefixIcon: const Icon(Icons.password_rounded),
              suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _obscurePassword = !_obscurePassword;
                    });
                  },
                  icon: _obscurePassword
                      ? const Icon(Icons.visibility_outlined)
                      : const Icon(Icons.visibility_off_outlined)),

            ),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size.fromHeight(50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: () {
              // Implement login logic here
              // For now, navigate to TaskListScreen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TaskListScreen()),
              );
            },
            child: Text('Login'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Not a member?"),
              TextButton(
                onPressed: () {
                  //_formKey.currentState?.reset();

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const Signup();
                      },
                    ),
                  );
                },
                child: const Text("Sign Up"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

