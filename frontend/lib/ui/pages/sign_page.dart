import 'package:flutter/material.dart';
import 'package:frontend/ui/widgets/checkbox_button.dart';
import 'package:frontend/ui/widgets/my_button.dart';
import 'package:frontend/ui/widgets/my_textfield.dart';



class SignPage extends StatelessWidget {
  SignPage({super.key});

  //text editing controller
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final emailConfirmController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordConfirmController = TextEditingController();

  //Sign User Method
  void signUserIn() {}

  //On Changed Method
  void onChanged (bool? value) {}

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
                color: const Color(0xFF6B1E00),
              ),
              const SizedBox(height: 50),
              Text(
                // Mensagem de Boas Vindas
                "Registre-se!",
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

              // email textfield
              MyTextfield(
                controller: passwordController,
                hintText: 'Email',
                obscureText: true,
              ),

              const SizedBox(height: 10),

              // email confirm textfield
              MyTextfield(
                controller: passwordController,
                hintText: 'Confirmar Email',
                obscureText: true,
              ),

              const SizedBox(height: 10),

              Row(
                children: [
                  // password
                  Flexible(
                    flex: 1,
                    child: MyTextfield(
                      controller: passwordController,
                      hintText: 'Senha',
                      obscureText: true,
                      padding: const EdgeInsets.only(left: 25.0), // Ajuste o padding conforme necessário
                    ),
                  ),
                  
                  const SizedBox(width: 8), // Espaçamento mínimo entre os campos
                  
                  // password confirm
                  Flexible(
                    flex: 1,
                    child: MyTextfield(
                      controller: passwordConfirmController,
                      hintText: 'Confirmar Senha',
                      obscureText: true,
                      padding: const EdgeInsets.only(right: 25.0), // Ajuste o padding conforme necessário
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 5),

              //checkbox in button
              CheckboxButton(
                onChanged: onChanged,
                title: "Concordo com os Termos de Uso.",
              ),

              const SizedBox(height: 25),

              //sign in button
              MyButton(
                onTap: signUserIn,
                title: "Cadastrar",
                tam: 20,
                tamHorizontal: 25,
                tamCircular: 8,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
