import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:google_sign_in/google_sign_in.dart';
import 'package:insta_app/bloc/bloc/auth_bloc.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    // FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    // final TextEditingController emailController = TextEditingController();
    // final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("SignUp"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: context.read<AuthBloc>().emailController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  labelText: "Email"),
            ),
            const SizedBox(
              height: 32,
            ),
            TextField(
              controller: context.read<AuthBloc>().passwordController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  labelText: "Password"),
            ),
            const SizedBox(
              height: 32,
            ),
            BlocBuilder<AuthBloc, AuthState>(
              buildWhen: (previous, current) =>
                  current is AuthLoading ||
                  current is AuthInitial ||
                  current is AuthSucess,
              builder: (context, state) {
                return SizedBox(
                  height: 32,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () async {
                      // final response =
                      //     await _firebaseAuth.createUserWithEmailAndPassword(
                      //   email: emailController.text,
                      //   password: passwordController.text,
                      // );
                      // if (response.user?.uid != null) {
                      //   ScaffoldMessenger.of(context).showSnackBar(
                      //     const SnackBar(
                      //       content: Text("Signup Sucess"),
                      //     ),
                      //   );
                      // }
                      // BlocProvider.of<AuthBloc>(context).add(AuthSignUpRequested());
                      context.read<AuthBloc>().add(AuthSignUpRequested());
                    },
                    child: state is AuthLoading
                        ? const CircularProgressIndicator()
                        : const Text("Sign Up"),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "OR",
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 32,
              child: ElevatedButton.icon(
                onPressed: () async {
                  context.read<AuthBloc>().add(AuthSignUpWithGoogleRequested());
                },
                icon: const Icon(Icons.login),
                label: const Text('Sign Up with Google'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
