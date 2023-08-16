import 'package:flutter/material.dart';
// import 'package:insta_app/pages/newtest.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// import 'package:bloc/bloc.dart';
// import 'package:insta_app/login_page.dart';
// import 'package:insta_app/pages/home.dart';
// import 'package:insta_app/pages/profile.dart';
import 'package:insta_app/user_screen/bloc/insta_bloc.dart';
import 'package:insta_app/user_screen/insta_screen.dart';
// import 'package:insta_app/pages/search.dart';
// import 'package:insta_app/pages/userpost.dart';
// import 'package:insta_app/pages/home.dart';
// import 'package:insta_app/pages/search.dart';
// import 'package:insta_app/pages/userpost.dart';
// import 'package:insta_app/login_page.dart';
// import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: LoginPage(),
      // home: const HomePage(),
      // home: const UserHome(),
      // home: UserPosts(),
      //home: UserSearch(),
      // home: const AppBarBase(),
      // home: UserProfile(),
      // home: const test(),
      home: BlocProvider(
        // lazy: false,
        create: (context) => InstaBloc()..add(InstaPostRequested()),
        child: const InstaScreen(),
      ),
      theme: ThemeData(
        primaryColor: Colors.black,
        primaryIconTheme: const IconThemeData(color: Colors.black),
      ),
    );
  }
}
