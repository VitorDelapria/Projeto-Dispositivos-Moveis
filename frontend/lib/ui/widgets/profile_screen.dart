import 'package:flutter/material.dart';
import 'package:frontend/ui/widgets/my_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  void EditUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1D1D1D),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Icon(
                // Logo do App
                Icons.account_circle,
                size: 100,
                color: Color(0xFF6B1E00),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Nome do Usuário",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 224, 224, 224),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "email@gmail.com",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 224, 224, 224),
                ),
              ),
              const SizedBox(
                height: 25,
              ),

              // Edit Bottom
              MyButton(
                onTap: EditUserIn,
                title: "Editar Perfil",
                tam: 15,
                tamHorizontal: 95,
                tamCircular: 25,
              ),

              const SizedBox(
                height: 25,
              ),

              const Divider(
                color: Color.fromARGB(255, 87, 87, 87),
              ),

              const SizedBox(
                height: 25,
              ),

              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(left: 20.0), // Espaço da borda esquerda
                    child: Text(
                      "Descrição:",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 231, 231, 231),
                      ),
                    ),
                  ),
                ],
              ),

              const Padding(
                padding:
                    EdgeInsets.only(left: 20.0), // Espaço da borda esquerda
                child: Text(
                  "asdbjadsdbfjdbdhhbfhfbdshafbdsfbhjfsbjhbsdhfbhdfbhjfbfasjjccijncasjcjcjcajscnajcjascnjascnjcnsnaknjcncnjnckjnas:",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 231, 231, 231),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
