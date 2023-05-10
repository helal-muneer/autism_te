import '../Screen/account_model.dart';
import '../Screen/cheeking.dart';
import '../Screen/child_info.dart';
import '../Screen/phone.dart';
import '../Screen/question_model.dart';
import '../Screen/splash_screen.dart';
import '../Screen/suggestions_view.dart';
import '../Screen/verify.dart';
import 'package:flutter/material.dart';

import 'Screen/MyHomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashScreen(),
        '/phone': (context) => const MyPhone(),
        '/verify': (context) => const MyVerify(),
        '/account_type': (context) => const MyAccount(),
        '/hild_info': (context) => const Child_info(),
        '/cheeking': (context) => const Cheeking(),
        '/question_model': (context) => const QuizScreen(),
        '/suggestions_view': (context) => const SuggestionsView(),
        '/MyHomePage': (context) => const MyHomePage(),
      },
    );
  }
}
