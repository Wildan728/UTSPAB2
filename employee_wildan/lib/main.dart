import 'package:employee_wildan/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetFlutter
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/HomeScreen',
      routes: {
        '/HomeScreen': (context) => HomeScreen(),
      },
    );
  }
}
