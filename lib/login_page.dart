import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 32.0, vertical: 100.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/logo.png"),
              const Center(
                child: Text(
                  'Instagram',
                  style: TextStyle(fontSize: 28, fontStyle: FontStyle.normal),
                  // style: VeganStylePersonalUse-5Y58.ttf(
                  //   textStyle: TextStyle(
                  //     fontSize: 48,
                  //     color: Colors.black,
                  //   ),
                  // ),
                ),
              ),
              // const SizedBox(height: 48),

              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  // Add login functionality here
                },
                child: const Text('Log in'),
              ),
              const SizedBox(height: 16),
              TextButton(
                onPressed: () {
                  // Add forgot password functionality here
                },
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Colors.blue,
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
