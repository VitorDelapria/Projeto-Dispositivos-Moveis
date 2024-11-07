import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Home'),
        elevation: 0,
        foregroundColor: const Color(0xFF1D1D1D),
      ),
    );
  }

}