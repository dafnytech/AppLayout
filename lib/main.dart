import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            color: const Color.fromARGB(255, 28, 135, 206), // Cor do fundo externo
            child: CenteredScreen(),
          ),
        ),
      ),
    );
  }
}

class CenteredScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250, // Largura fixa da tela central
      height: 300, // Altura fixa da tela central
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 236, 171, 235), // Cor da tela central
        borderRadius: BorderRadius.circular(20), // Bordas arredondadas
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 167, 82, 82).withOpacity(0.5), // Sombra leve
            spreadRadius: 4,
            blurRadius: 10,
            offset: Offset(0, 3), // Deslocamento da sombra
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'PROJETO',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'LAYOUT',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
