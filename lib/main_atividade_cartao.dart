import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 350,
                height: 200,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 1, 1, 1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Banco SESI / SENAI",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Icon(Icons.contactless, color: Colors.white, size: 30),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "8888 6868 8181 0000",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Icon(Icons.sim_card, color: Colors.orange, size: 40),
                      ],
                    ),
                    
                    const SizedBox(height: 20), 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [ 
                        Text(
                          "Titular",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        Text(
                          "Validade",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Cauê Oliveira",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Text(
                          "12/28",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                  ],
            
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
