import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginScreen(),
  ));
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final largura = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(largura * 0.08),
          child: Column(
            children: [
              const Icon(Icons.lock, color: Colors.lightBlue, size: 80),

              const SizedBox(height: 20),

              const Text("Login", style: TextStyle(fontSize: 24)),

              const SizedBox(height: 20),

              TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 10),

              TextField(
                obscureText: true, // 👈 esconde a senha
                decoration: InputDecoration(
                  labelText: "Senha",
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 20),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Entrar"),
                ),
              ),

              TextButton(
                onPressed: () {},
                child: const Text("Criar conta"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}