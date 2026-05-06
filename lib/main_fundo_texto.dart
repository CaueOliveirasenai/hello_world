import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
} 

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/Sweet.webp"),
              fit: BoxFit.fitWidth,
            ),
            ),
            child: const Center(
              child: Text(
                "SENAI",
                style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 239, 239, 239),
                  fontWeight: FontWeight.bold,
                ),
              )
            )
        ),
      ),
    );
  }
}