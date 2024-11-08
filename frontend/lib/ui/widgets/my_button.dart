import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  final Function()? onTap;
  final String title;
  final double tam;
  final double tamHorizontal;
  final double tamCircular;

  const MyButton({super.key, required this.onTap, required this.title, required this.tam, required this.tamHorizontal, required this.tamCircular});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(tam),
        margin: EdgeInsets.symmetric(horizontal: tamHorizontal),
        decoration: BoxDecoration(
          color: const Color(0xFF6B1E00),
          borderRadius: BorderRadius.circular(tamCircular),
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
