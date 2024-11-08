import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D1D1D),
      body: ListView(
        children: const <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
            child: Text(
              "Messages",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
