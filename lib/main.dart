import 'package:flutter/material.dart';
import 'package:flutter_web/pages/home.dart';
import 'package:flutter_web/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expense Tracker',
      theme: ThemeData(
          fontFamily: 'HindSiliguri',
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          brightness: Brightness.light,
          useMaterial3: true,
          primaryColor: AppColors.primary),
      home: const Home(),
    );
  }
}
