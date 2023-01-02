
  def boas_bindas
    p "Bem vindo ao jogo da forca"
    p "Qual é seu nome ?"
    nome = gets.strip
    p "\n\n\n\n\n\n\n"
    p "começaremos um jogo para voce #{nome}"
    nome
  end

  def escolhendo_palavras
    p "escolhendo uma palavra"
    palavra_secreta = "Programado"
    p "Palavra secreta com #{palavra_secreta.size} letras "
    palavra_secreta
  end

  def nao_quer_jogar?
    p "Quer jogar novamente ? (S/N)"
    jogar_novamente = gets.strip
    # nao_quero_jogar = jogar_novamente.upcase('N') sera que posso fazer assim ?
    nao_quero_jogar = jogar_novamente.upcase == 'N'

  end

  def dar_chutes(chutes)
    p "Bora jogar ? digite uma letra ou palavra ..."
    p "voce chutou #{chutes}"
    chute = gets.strip
    chute
  end

  def joga(nome)
    palavra_secreta = escolhendo_palavras

    erros = 0
    chutes = []
    pontos = 0

    while erros < 5
      chute  =  dar_chutes chutes
      chutes << chute
      
      chutou_uma_letra =  chute.size == 1
      if chutou_uma_letra
        letraprocurada = chute[0]
        total_encontrada = palavra_secreta.count letraprocurada
        if total_encontrada == 0
          p "Letra nao encontrada"
          erros += 1
        else
          p "Essa letra tem"
        end
      else

        acertou = chute == palavra_secreta
        if acertou
          p "Parabens voce acertou a palavra secreta"
          pontos += 100
          break
        else
          p "voce errou a palavra secreta"
          pontos -= 30
          erros += 1
        end
      end
      
    end
    
    p "voce acertou #{pontos} e errou #{erros} e voce chutou #{chutes}"
  end

  nome = boas_bindas
  loop do
    joga nome
    if nao_quer_jogar?
      p "obrigado por jogar"
      break
    end
  end
  
  
