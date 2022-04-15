import 'package:flutter/material.dart';
import 'package:youtube/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primarySwatch: Colors.red,
        brightness: Brightness.dark,
      ),
      home: const HomeScreen(),
    );
  }
}
