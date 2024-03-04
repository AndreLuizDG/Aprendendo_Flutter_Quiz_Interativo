import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

void main() => runApp(const PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final _perguntas = const [
    {
      'texto': 'Quanto que é 5*5?',
      'respostas': [
        {'texto': '20', 'pontuacao': 0},
        {'texto': '35', 'pontuacao': 0},
        {'texto': '25', 'pontuacao': 1},
        {'texto': '40', 'pontuacao': 0},
      ],
    },
    {
      'texto': 'Quanto que é 4*4?',
      'respostas': [
        {'texto': '16', 'pontuacao': 1},
        {'texto': '6', 'pontuacao': 0},
        {'texto': '12', 'pontuacao': 0},
        {'texto': '8', 'pontuacao': 0},
      ],
    },
    {
      'texto': 'Quanto que é 11*11',
      'respostas': [
        {'texto': '111', 'pontuacao': 0},
        {'texto': '110', 'pontuacao': 0},
        {'texto': '121', 'pontuacao': 1},
        {'texto': '122', 'pontuacao': 0},
      ],
    },
  ];

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }

  void _reiniciarQuestionario(){
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quandoResponder: _responder,
              )
            : Resultado(_pontuacaoTotal, _reiniciarQuestionario),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
