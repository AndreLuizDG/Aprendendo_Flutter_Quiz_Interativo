import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {

final int pontuacao;
final void Function() quandoReiniciarQuestionario;

Resultado(this.pontuacao, this.quandoReiniciarQuestionario);

String get fraseRsultado {
  if(pontuacao == 1){
    return 'Parabens! Acertou 1 pergunta';
  } else if(pontuacao == 2){
    return 'Você é bom! Acertou 2 perguntas';
  } else if(pontuacao == 3){
    return 'Impressionante! Acertou 3 perguntas';
  } else{
    return 'Você errou todas as perguntas!';
  }
}

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseRsultado,
            style: TextStyle(
              fontSize: 18,
              ),
          ),
        ),
        ElevatedButton(
          child: Text('Reiniciar?'),
           style: ElevatedButton.styleFrom(
          backgroundColor: Colors.amber,
          foregroundColor: Colors.white,
          textStyle: TextStyle(
            fontSize: 18,
          )
        ),
        onPressed: quandoReiniciarQuestionario,
          )
      ],
    );
  }
}
