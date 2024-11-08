import 'package:flutter/material.dart';

class NavigationCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Widget destination;

  const NavigationCard({
    super.key,
    required this.title,
    required this.icon,
    required this.destination,
  }); // construtor

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destination),
        );
      },
      child: Card(
        color: const Color(0xFF303030),
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(36.0),
          child: Row(
            children: [
              Icon(
                icon,
                size: 32,
                color: Colors.grey[600],
              ),
              const SizedBox(
                width: 16,
              ),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
