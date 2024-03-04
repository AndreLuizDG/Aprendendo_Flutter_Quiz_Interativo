## Descrição do código Flutter para um Quiz de Matemática

**Objetivo:** 

Este código Flutter implementa um quiz de matemática simples com 3 perguntas sobre multiplicação. O usuário responde a cada pergunta e recebe uma pontuação. Ao final do quiz, o usuário é apresentado à sua pontuação total e tem a opção de reiniciar o quiz.

**Funcionalidades:**

* **3 perguntas de múltipla escolha:**
    * 5 x 5 = ?
    * 4 x 4 = ?
    * 11 x 11 = ?
* **Pontuação:**
    * 1 ponto para cada resposta correta.
* **Resultado:**
    * Mensagem personalizada com base na pontuação total.
    * Botão para reiniciar o quiz.

**Detalhes do código:**

* **main.dart:**
    * Define a função `main` que inicia o aplicativo.
    * Cria uma instância da classe `PerguntaApp`.
* **_PerguntaAppState:**
    * Estado da classe `PerguntaApp`.
    * Armazena as perguntas, respostas, pontuação e estado atual do quiz.
    * Contém métodos para responder perguntas, reiniciar o quiz e construir a interface do usuário.
* **PerguntaApp:**
    * Classe StatefulWidget que define a estrutura do widget principal.
    * Cria um `_PerguntaAppState` para gerenciar o estado do widget.
* **Questao:**
    * Widget que exibe o texto da pergunta.
* **Resposta:**
    * Widget que exibe uma opção de resposta e registra a resposta do usuário.
* **Questionario:**
    * Widget que exibe a pergunta atual e as opções de resposta.
    * Chama a função `_responder` quando o usuário seleciona uma resposta.
* **Resultado:**
    * Widget que exibe a pontuação final e um botão para reiniciar o quiz.


**Exemplo de uso:**

1. Execute o aplicativo no seu dispositivo ou emulador.
2. Responda as perguntas do quiz selecionando a resposta correta.
3. Veja sua pontuação final e reinicie o quiz se desejar.

**Melhorias:**

* Adicionar mais perguntas e categorias.
* Implementar um sistema de tempo para cada pergunta.
* Salvar o histórico de pontuação do usuário.
* Personalizar a interface do usuário com cores, imagens e animações.

**Este código pode ser útil para:**

* Aprender e praticar os conceitos básicos do Flutter.
* Criar um quiz interativo para fins educacionais ou de entretenimento.
