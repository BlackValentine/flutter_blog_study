import 'package:flutter/material.dart';
import 'blog_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                const Text(
                  "WELCOME TO THE BLOG",
                  style: TextStyle(
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                Image.asset("images/welcome.png"),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BlogPage(
                                    dataFromLoginPage: 'Hello',
                                  )));
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blueGrey[900],
                        minimumSize: const Size(250, 45),
                        elevation: 5),
                    child: const Text('Sign In')),
                const SizedBox(height: 10),
                TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.blueGrey[100],
                      primary: Colors.blueGrey[900],
                      minimumSize: const Size(250, 45),
                      elevation: 5),
                  onPressed: () {
                    debugPrint("Register");
                  },
                  child: const Text("Register"),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
