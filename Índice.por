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
       * 
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

      // Chama a função desenhar_cena para mostrar ps gráficos do jogo.
      desenhar_cena(
        nome_meu_pokemon,
        hp_meu_pokemon,
        max_hp_meu_pokemon,
        nome_pokemon_inimigo,
        hp_pokemon_inimigo,
        max_hp_pokemon_inimigo,
        "Um " + nome_pokemon_inimigo + " selvagem apareceu!" 
      )

      //ENTRADA: O jogo aguarda que o jogador confirme antes de iniciar.
      cadeia continuar
      escreva("Pressione ENTER para atacar...")
      leia(continuar)                         
      /*
      * Operadores arítmetricos
      *
      * Soma (+) = Realizar a soma de dois números, exemplo: soma = 2 + 2.
      * Subtração (-) = Realizar a subtração de dois números, exemplo: subtração = 3 - 2.
      * Multiplicação (*) = Realizar a multiplicação de dois ou mais números, exemplo: multiplicação = 2 * 2.
      * Divisão (/) = Realizar a divisão de dois ou mais números, exemplo: 2 / 2. 
      * Módulo (%) = Calcula o resto de uma divisão, exemplo: divisão = 3 % 2.
      */

      inteiro dano = util.sorteia(22, 90)
      hp_pokemon_inimigo = hp_pokemon_inimigo - dano  //OBS: Pode ser também escrito como:  "hp_pokemon_inimigo += - dano" 
     /**
      * Operadores relacionais:

      * > sinal de maior que, exemplo: valor = 3 > 2.
      * < sinal de menor que, exemplo: valor = 3 < 2.
      * >= sinal de maior ou  igual, exemplo: valor = 4 >= 5.
      * <= sinal de menor ou igual, exemplo: valor = 3 <= 5.
      * == sinal de igual, exemplo: valor = 2 == 2.
      * != sinal de diferente, exemplo: valor = 3 != 2.

      * Os operadores relacionais retornam valores verdadeiro ou falso.
      */
      
      se(hp_pokemon_inimigo < 0 ){
        hp_pokemon_inimigo = 0
      }

      escreva(" >> ", nome_meu_pokemon, "causou ", dano, "de dano!\n")
      escreva(" >> HP restante de ", nome_pokemon_inimigo, ": ", hp_pokemon_inimigo, "/", max_hp_pokemon_inimigo,"\n")
      desenhar_cena(
        nome_meu_pokemon,
        hp_meu_pokemon,
        max_hp_meu_pokemon,
        nome_pokemon_inimigo,
        hp_pokemon_inimigo,
        max_hp_pokemon_inimigo,
        nome_meu_pokemon + " causou " + dano + " de dano!"
      )

    }

    funcao vazio desenhar_cena(
    cadeia p_nome,
    inteiro p_hp,
    inteiro p_max_hp,
    cadeia i_nome,
    inteiro i_hp,
    inteiro i_max_hap,
    cadeia mensagem
    ){

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
      graficos.definir_cor(graficos.criar_cor(250,250, 235))
      graficos.desenhar_retangulo(50, 40, 300, 75, falso, verdadeiro)
      graficos.definir_cor(graficos.COR_PRETO)
      graficos.desenhar_retangulo(50, 40, 300, 75, falso, falso)

      graficos.definir_cor(graficos.criar_cor(250,250, 235))
      graficos.desenhar_retangulo(450, 310,300,75, falso, verdadeiro)
      graficos.definir_cor(graficos.COR_PRETO)
      graficos.desenhar_retangulo(450, 310,300,75, falso, falso)
      graficos.desenhar_texto(60, 55, i_hp + " HP: " + i_hp + "/" + i_max_hap)
      graficos.desenhar_texto(480, 372, p_nome + " HP: " + p_hp + "/" +p_max_hp)

      graficos.definir_cor(graficos.criar_cor(250,250,235))
      graficos.desenhar_retangulo(20,420,760,65,falso,verdadeiro)
      graficos.definir_cor(graficos.COR_PRETO)
      graficos.desenhar_retangulo(20,420,760,65,falso,falso)
      graficos.desenhar_texto(40,445,mensagem)
      
     //Esta funçaõ é responsável por mostrar a tela de jogo
      graficos.renderizar()

      escreva("Janela gráfica! Utilizando a biblioteca de gráficos do Portugol.")

      //A função aguarde irá executar a janela por 5 segundos.
      util.aguarde(5000)
    }
}