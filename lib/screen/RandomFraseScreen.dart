import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Importar o serviço de área de transferência

class RandomFraseScreen extends StatefulWidget {
  const RandomFraseScreen({super.key});

  @override
  _RandomFraseScreenState createState() => _RandomFraseScreenState();
}

class _RandomFraseScreenState extends State<RandomFraseScreen> {
  // Lista com as frases de Natal
  final List<String> frases = [
    "Que a magia do Natal renove nossa esperança e nos inspire a espalhar amor por onde formos.",
    "Que a luz do Natal ilumine o seu caminho e o novo ano que se inicia seja melhor do que o que passou.",
    "Que o Natal seja repleto de amor e alegria, e que o Ano Novo traga muitas realizações e felicidades.",
    "Que o Natal seja um momento de luz e harmonia, e que o Ano Novo seja repleto de paz e felicidade.",
    "Que o Natal nos ensine a ser mais humanos, a olhar o próximo com mais compaixão e a viver com mais gratidão.",
    "O Natal é tempo de celebrar a vida, a amizade e a família. Que seja um momento de união e alegria!",
    "Que o verdadeiro espírito do Natal toque os corações de todos e nos faça mais solidários e generosos.",
    "Que a paz e a alegria do Natal acompanhem todos os dias do ano que se inicia.",
    "Que a estrela de Belém ilumine todos os nossos caminhos e traga prosperidade e felicidade.",
    "Neste Natal, que o amor seja o nosso maior presente.",
    "O melhor presente que podemos oferecer no Natal é o nosso carinho e atenção.",
    "Que a magia do Natal invada seu coração e traga renovação, esperança e felicidade.",
    "Que a luz do Natal ilumine seus sonhos e traga a realização de seus desejos mais sinceros.",
    "Que os sinos de Natal toquem também em nossos corações, despertando os melhores sentimentos.",
    "O Natal é uma oportunidade de renovar nossa fé e esperança em tempos melhores.",
    "Que neste Natal, a harmonia reine em sua casa e o amor seja sempre a sua guia.",
    "Que o espírito de solidariedade e fraternidade se faça presente em cada atitude nossa neste Natal.",
    "Que cada estrela no céu de Natal seja um lembrete de que sempre há esperança e beleza à nossa volta.",
    "Neste Natal, que a sua vida seja iluminada pela paz e pela felicidade.",
    "O Natal nos oferece a chance de recomeçar, de transformar nossos sonhos em realidade com muito amor.",
    "Que o Natal seja um momento de renovação, de reflexão e de compartilhar bons sentimentos com os outros.",
    "Que as bênçãos do Natal tragam prosperidade, saúde e muita felicidade para você e sua família.",
    "O Natal é um convite para o coração se abrir e espalhar amor a todos que cruzam nosso caminho.",
    "Que a luz de Cristo nos guie no caminho da paz e do amor, hoje e sempre.",
    "Que a alegria do Natal esteja presente em cada gesto, em cada palavra e em cada olhar.",
    "Que a magia do Natal envolva todos os nossos dias com a beleza da esperança e o calor da amizade.",
    "O Natal é tempo de compartilhar, de dar, de receber, de agradecer. Que seja repleto de luz e alegria!"
  ];

  String _fraseAtual = "";

  void _gerarFraseAleatoria() {
    final random = Random();
    setState(() {
      _fraseAtual = frases[random.nextInt(frases.length)];
    });
  }

  // Função para copiar a frase para a área de transferência
  void _copiarFrase() {
    if (_fraseAtual.isNotEmpty) {
      Clipboard.setData(ClipboardData(text: _fraseAtual));
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text('Frase copiada para a área de transferência!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      appBar: AppBar(
        title: const Text('Mensagens de Natal'),
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: Text(
                "Deseje um Feliz Natal com as nossas frases!",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.green.shade800,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            // Exibição da frase com animação
            AnimatedOpacity(
              opacity: _fraseAtual.isEmpty ? 0 : 1,
              duration: const Duration(seconds: 1),
              child: Text(
                _fraseAtual.isEmpty
                    ? "Toque no botão para uma frase!"
                    : _fraseAtual,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black87,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: _gerarFraseAleatoria,
              child: const Text("Frase Aleatória"),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.green.shade700,
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Botão para copiar a frase
            ElevatedButton(
              onPressed: _copiarFrase,
              child: const Text("Copiar Frase"),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue.shade700,
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBOY6Rkfw_v1MtUlRZlNAj18gaTPTJ-neM4Q&s',
              width: 150,
              height: 150,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
