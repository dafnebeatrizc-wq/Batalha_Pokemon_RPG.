programa {
  inclua biblioteca Graficos --> graficos
  inclua biblioteca Util --> util
  const inteiro LARGURA = 800
  const inteiro ALTURA = 500

    funcao inicio (){
      // Estas funcionalidades da biblioteca de gráficos são para criar a tela do jogo.
      graficos.iniciar_modo_grafico(verdadeiro)
      graficos.definir_dimensoes_janela(800,500)
      graficos.definir_titulo_janela(" Batalha Pokémon RPG")
      /**
       * Tipos de variáveis:
       * Inteiro = tipo responsável por vonter números inteiros, sem decimal, exemplo: idade = 18.
       * Real = tipo responsável por conter números com casas decimais, exemplo: 5.99.
       * Caractere = tipo responsável por conter apenas um caractere, exemplo: sexo = 'M'.
       * Cadeia = tipo responsável por conter texto, exemplo: nome =  "Dafne".
       * Logico = tipo responsável por conter valores lógicos, exemplo: cadastro = falso.
       * Vazio = tipo responsável para executar funções que não retornam valor, exemplo: função escreva.
       */

      cadeia nome_meu_pokemon = "Pikachu"
      inteiro hp_meu_pokemon = 100
      inteiro max_hp_meu_pokemon = 100

      //Informações do pokémon inimigo.
      cadeia nome_pokemon_inimigo = "Gengar"
      inteiro hp_pokemon_inimigo = 120
      inteiro max_hp_pokemon_inimigo = 120

      /*
      * Operadores arítmetricos
      *
      * Soma (+) = Realizar a soma de dois números, exemplo: soma = 2 + 2.
      * Subtração (-) = Realizar a subtração de dois números, exemplo: subtração = 3 - 2.
      * Multiplicação (*) = Realizar a multiplicação de dois ou mais números, exemplo: multiplicação = 2 * 2.
      * Divisão (/) = Realizar a divisão de dois ou mais números, exemplo: 2 / 2. 
      * Módulo (%) = Calcula o resto de uma divisão, exemplo: divisão = 3 % 2.
      */

      inteiro dano = util.sorteia(22, 35)
      hp_pokemon_inimigo = hp_pokemon_inimigo - dano  
       //Pode ser também "hp_pokemon_inimigo += - dano" 
      escreva("=== FICHA DA BATALHA === \n")
      escreva(nome_meu_pokemon, " -HP: ", hp_meu_pokemon, "/", max_hp_meu_pokemon, "\n")
      escreva(nome_pokemon_inimigo, " -HP: ", hp_pokemon_inimigo, "/", max_hp_pokemon_inimigo,"(sofreu)",dano, "(de dano)", "\n")

      // Desenho do céu da tela do jogo.
      graficos.definir_cor(graficos.criar_cor(150, 216, 250))
      graficos.desenhar_retangulo(0,0, 800, 260, falso, verdadeiro)

      // Desenho da grama da tela do jogo.
      graficos.definir_cor(graficos.criar_cor(120, 190, 100))
      graficos.desenhar_retangulo(0,260, 800, 240, falso, verdadeiro)

      //Desenhar a grama do pokémon inimigo.
      graficos.definir_cor(graficos.criar_cor(90, 130, 80))
      graficos.desenhar_elipse(475, 165, 250, 65, verdadeiro)

      //Desenhar a grama do nosso pokémon.
      graficos.definir_cor(graficos.criar_cor(80, 120, 70))
      graficos.desenhar_elipse(90,365,290,70, verdadeiro)

      //Desenho inicial do pokémon inimigo.
      graficos.definir_cor(graficos.criar_cor(110, 60,150))
      graficos.desenhar_retangulo(540, 90, 110, 100, falso, verdadeiro)

      //Desenho inicial do nosso pokémon.
      graficos.definir_cor(graficos.criar_cor(255, 215, 0))
      graficos.desenhar_retangulo(180, 280, 110, 100, falso, verdadeiro)

      //Textos das informações dos pokémons.
      graficos.definir_cor(graficos.COR_PRETO)
      graficos.desenhar_texto(60, 55, nome_pokemon_inimigo + " HP: " + hp_pokemon_inimigo + "/" + max_hp_pokemon_inimigo)
      graficos.desenhar_texto(480, 372, nome_meu_pokemon + " HP: " + hp_meu_pokemon + "/" + max_hp_meu_pokemon)
      
     //Esta funçaõ é responsável por mostrar a tela de jogo
      graficos.renderizar()

      escreva("Janela gráfica! Utilizando a biblioteca de gráficos do Portugol.")

      //A função aguarde irá executar a janela por 5 segundos.
      util.aguarde(5000)
    }
}