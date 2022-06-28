import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(
    home: Home(),
  ));
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _frases = [
    "Você pode gastar seu dinheiro como quiser. É assim que o dinheiro funciona.",
    "Vou te ensinar a melhor defesa que você pode aprender. E a melhor defesa é mais ataque.",
    "Se peguei pesado com você, é porque você tem potencial para ser melhor do que eu.",
    "A vida nem sempre é justa. Às vezes, o mundo pode ser cruel. É por isso que precisam aprender a ser cruéis.",
    "Não há o bom. Não há o mau. Apenas o fraco e o forte",
    "Às vezes, um passo pra trás abre um novo caminho."
  ];
  var _fraseGerada = "Clique abaixo para gerar uma frase";

  void _gerarFrase(){
    var numeroSorteado = Random().nextInt(_frases.length);

    setState((){
      _fraseGerada = _frases[numeroSorteado];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        /*
        decoration: BoxDecoration(
          border: Border.all(width: 3, color: Colors.amber)
        ),
         */
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment:  CrossAxisAlignment.center,
          children: [
            Image.asset("images/logo.png"),
            Text(
              _fraseGerada,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                color: Colors.black
              ),
            ),
            RaisedButton(
              child: Text(
                  "Nova frase",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
              color: Colors.green,
              onPressed: _gerarFrase,
            )
          ],
        ),
      ),
    );
  }
}
