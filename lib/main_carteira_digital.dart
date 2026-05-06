import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "CarteiraDigital",
      home: CarteiraDigital(),
    );
  }
}

class CarteiraDigital extends StatelessWidget {
  const CarteiraDigital({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Carteira Digital"), centerTitle: true),

      body: ListView(
        padding: EdgeInsets.all(20),
          children: [
            CartaoBanco(
              corCartao: const Color.fromARGB(255, 15, 25, 161),
              banco: "Bradesco",
              numero: "5555 5675 8888 0000",
              nome: "Cauê Oliveira",
              validade: "08/28",
              bandeira: 'assets/images/cartao-elo.png',
            ), //CartaoBanco

          SizedBox(height: 20),

          CartaoBanco(
              corCartao: const Color.fromARGB(255, 107, 2, 2),
              banco: "Santander",
              numero: "5555 8888 7777 4444",
              nome: "Cauê Oliveira",
              validade: "18/29",
              bandeira: 'assets/images/logo_visa.png',
            ), //CartaoBanco

          SizedBox(height: 20),

          CartaoBanco(
              corCartao: const Color.fromARGB(255, 68, 0, 117),
              banco: "Nubank",
              numero: "8888 2222 1111 3333",
              nome: "Cauê Oliveira",
              validade: "02/30",
              bandeira: 'assets/images/image.nubank.png',              
            ), //CartaoBanco

          SizedBox(height: 20)

          ],
                
        ),
      );
  }
}

class CartaoBanco extends StatelessWidget {
  final Color corCartao;
  final String banco;
  final String numero;
  final String nome;
  final String validade;
  final String bandeira;

  const CartaoBanco ({
    super.key,
    required this.corCartao,
    required this.banco,
    required this.numero,
    required this.nome,
    required this.validade,
    required this.bandeira,

  });

  @override

  Widget build (BuildContext context) {
    return Container(
      height: 200,
      padding: EdgeInsets.all(20),

      decoration: BoxDecoration(
        color: corCartao,
        borderRadius: BorderRadius.circular(20),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                banco,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(width: 20),
              Image.asset(bandeira, height: 40, width: 40),
              Icon(Icons.contactless, color:Colors.white),
            ],
          ),

          Icon(Icons.sim_card, color: Colors.orange, size: 40),

          Text(
            numero,
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              letterSpacing: 2,
            ),
          ),

         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(
                "Titular",
                style: TextStyle(color: Colors.white70, fontSize: 12),
              ),
               
              Text(
                nome,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ),

                      Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(
                "Validade",
                style: TextStyle(color: Colors.white70, fontSize: 12),
              ),
               
              Text(
                validade,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ),
            
          
          ],
         ), 
        ],
      ),
    );
  }
}