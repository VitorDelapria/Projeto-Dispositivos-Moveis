import 'package:flutter/material.dart';
import 'package:frontend/ui/pages/home_page.dart';
import 'package:frontend/ui/pages/login_page.dart';
import 'package:frontend/ui/pages/sign_page.dart';

void main() {
  runApp(
    const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
