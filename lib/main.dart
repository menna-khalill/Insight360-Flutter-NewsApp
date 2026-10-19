import 'package:flutter/material.dart';
import 'package:my_project_2/screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Insight 360',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xff001F3F),
        ),
        useMaterial3: true,
      ),
      home: const Splash(),
    );
  }
}
