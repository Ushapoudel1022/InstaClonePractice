import 'package:flutter/material.dart';
import 'package:insta_app/homepage.dart';

// class LoginPage extends StatelessWidget {
//   LoginPage({super.key});

//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();

//   bool isValidEmail(String email) {
//     if (!email.contains('@')) {
//       return false;
//     }
//     return true;
//   }

//   bool isValidPassword(String password) {
//     if (!password.contains(RegExp(r'[A-Z]'))) {
//       return false;
//     }

//     if (!password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
//       return false;
//     }

//     if (password.length < 8) {
//       return false;
//     }

//     return true;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         child: Padding(
//           padding:
//               const EdgeInsets.symmetric(horizontal: 32.0, vertical: 100.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Image.asset("assets/images/logo.png"),
//               const Center(
//                 child: Text(
//                   'Instagram',
//                   style: TextStyle(
//                       fontSize: 28,
//                       fontStyle: FontStyle.normal,
//                       fontFamily: 'Billabong'),
//
//                   //   textStyle: TextStyle(
//                   //     fontSize: 48,
//                   //     color: Colors.black,
//                   //   ),
//                   // ),
//                 ),
//               ),
//               // const SizedBox(height: 48),

//               const SizedBox(height: 16),
//               TextFormField(
//                 decoration: const InputDecoration(
//                   labelText: 'Username',
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               const SizedBox(height: 16),
//               TextFormField(
//                 decoration: const InputDecoration(
//                   labelText: 'Password',
//                   border: OutlineInputBorder(),
//                 ),
//                 obscureText: true,
//               ),
//               const SizedBox(height: 32),
//               ElevatedButton(
//                 onPressed: () {
//
//                 },
//                 child: const Text('Log in'),
//               ),
//               const SizedBox(height: 16),
//               TextButton(
//                 onPressed: () {
//
//                 },
//                 child: const Text(
//                   'Forgot Password?',
//                   style: TextStyle(
//                     color: Colors.blue,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//  );
//   }
// }
class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginPage({super.key});

  bool isValidEmail(String email) {
    return RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$')
        .hasMatch(email);
  }

  bool isValidPassword(String password) {
    return password.length >= 8 && password.contains(RegExp(r'[A-Z]'));
  }

  void login(BuildContext context) {
    final String email = emailController.text;
    final String password = passwordController.text;

    if (isValidEmail(email) && isValidPassword(password)) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Invalid Credentials'),
            content: const Text('Please enter valid email and password.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                'Instagram',
                style: TextStyle(
                  fontSize: 38,
                  fontStyle: FontStyle.normal,
                  fontFamily: 'Billabong',
                  height: 4,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  labelText: 'Enter your Email'),
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              controller: passwordController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  labelText: 'Enter your Password'),
              obscureText: true,
            ),
            const SizedBox(height: 16.0),
            SizedBox(
              width: double.infinity,
              height: 40,
              child: ElevatedButton(
                onPressed: () => login(context),
                child: const Text('Login'),
              ),
            ),
            const Divider(
              height: 2,
              thickness: 1,
              color: Colors.black,
            ),
            const SizedBox(height: 16.0),
            const Text("Forgot Password?",
                style: TextStyle(color: Colors.blue, fontSize: 12))
          ],
        ),
      ),
    );
  }
}
