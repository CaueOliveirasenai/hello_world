import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ContadorCurtida());
  }
}

class ContadorCurtida extends StatefulWidget {
  const ContadorCurtida({super.key});

  @override
  State<ContadorCurtida> createState() => _ContadorCurtidaState();
}

class _ContadorCurtidaState extends State<ContadorCurtida> {
  int contador = 0;

  void incrementar() {
    setState(() {
      contador++;
    });
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Exemplo setState")),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.favorite, size: 80, color: Color(0xFFE91E63)),

              SizedBox(height: 20,),

              Text("$contador curtidas", style: TextStyle(fontSize: 18)),

              SizedBox(height: 20,),

              ElevatedButton(
                onPressed: incrementar,
                child: Text("Curtir"),
              ),
            ],
        ),
      ),
    );
  }
}
