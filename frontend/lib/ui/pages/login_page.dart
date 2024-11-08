import 'package:flutter/material.dart';
import 'package:frontend/ui/widgets/my_button.dart';
import 'package:frontend/ui/widgets/my_textfield.dart';
import 'package:frontend/ui/widgets/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //text editing controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //sign user method
  void signUserIn() {}

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
                Icons.lock,
                size: 100,
                color: Color(0xFF6B1E00),
              ),
              const SizedBox(height: 50),
              Text(
                // Mensagem de Boas Vindas
                "Bem vindo!",
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 25),

              // username textfield
              MyTextfield(
                controller: usernameController,
                hintText: 'Usuário',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              // password textfield
              MyTextfield(
                controller: passwordController,
                hintText: 'Senha',
                obscureText: true,
              ),

              const SizedBox(height: 10),

              //forgot password?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Esqueceu a senha?",
                      style: TextStyle(color: Colors.grey[500 ]),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              //sign in button
              MyButton(
                onTap: signUserIn,
                title: "Entrar",
                tam: 20,
                tamHorizontal: 25,
                tamCircular: 8,
              ),

              const SizedBox(height: 25),

              //or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        "Ou continue com",
                        style: TextStyle(color: Colors.grey[500]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 50),

              //google + facebook sign
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // google button
                  SquareTile(imagePath: 'lib/images/google_Icon.png'),

                  SizedBox(
                    width: 10,
                  ),

                  // facebook button
                  SquareTile(imagePath: 'lib/images/facebook_Icon.png'),
                ],
              ),

              const SizedBox(height: 50),

              //not a member? register her.
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Não é cadastrado? ",
                    style: TextStyle(
                      color: Colors.grey[500],
                    ),
                  ),
                  const SizedBox(width: 4),
                  const Text(
                    "Registre-se aqui",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
