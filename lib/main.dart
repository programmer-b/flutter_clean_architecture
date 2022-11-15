import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/src/injector.dart';
import 'package:flutter_clean_architecture/src/presentation/screens/home_screen.dart';

void main() {
  runApp(const Injector(router: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
