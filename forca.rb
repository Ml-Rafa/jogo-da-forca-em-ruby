def escolha_uma_letra
  p "De seu primeiro pitaco"
  chute =  gets.strip.downcase

  palavra_secreta = "programador"
  chutes = []
  erros = 0
  acertos = 0

  while erros < 5
    if palavra_secreta.include?(chute)
      p "Voce acertou uma letra"
      chutes << chute
      acertos += 1
      if chute == palavra_secreta
        p "Voce acertou a palavra secreta "
      end
      break
      p chutes
      chute = gets.strip
    else
      p "voce errou uma letra"
      chutes << chute
      erros += 1
      p chutes
      chute = gets.strip
    end
  end
end

def saldação
  p 'Vamos jogar ? digite (S/N)'
  resposta =  gets.strip
  if resposta.upcase == 'N'
    p "Obrigado até mais"
  else
    p "Que legal, vamos jogar"
    escolha_uma_letra
  end
end
saldação


