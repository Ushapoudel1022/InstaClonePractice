import 'package:flutter/material.dart';
// import 'package:insta_app/pages/home.dart';
// import 'package:insta_app/pages/search.dart';
// import 'package:insta_app/pages/userpost.dart';
// import 'package:insta_app/login_page.dart';
import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: LoginPage(),
      home: const HomePage(),
      // home: const UserHome(),
      //home: const UserPosts(),
      //home: UserSearch(),
      theme: ThemeData(
        primaryColor: Colors.black,
        primaryIconTheme: const IconThemeData(color: Colors.black),
      ),
    );
  }
}
