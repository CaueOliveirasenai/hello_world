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
                width: 200,
                height: 100,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    "Caixa 1",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 253, 253, 253),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),

              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  
                  Container(width: 80, height: 80, color: Colors.red),

                  SizedBox(width: 20),

                  
                  
                  Container(width: 80, height: 80, color: Colors.green),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
