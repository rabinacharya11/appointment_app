import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_6th_may/features/appointment/presentation/main_screen.dart';
import 'package:flutter_app_6th_may/features/auth/presentation/register_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hospital Management App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.manage_accounts,
              size: 100.0,
              color: Colors.deepPurple,
            ),
            const SizedBox(
              height: 24,
            ),
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            const SizedBox(height: 48.0),
            InkWell(
              onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (_) => UserHomeScreen(),
                ),
              ),
              child: Container(
                height: 56,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24.0),
            RichText(
                text: TextSpan(
              text: 'Don\'t have an account? ',
              style: const TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => RegisterScreen()));
                    },
                  text: 'Sign Up',
                  style: const TextStyle(
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
