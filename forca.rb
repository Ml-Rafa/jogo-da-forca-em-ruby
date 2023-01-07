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
        break
      end
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
  resposta =  gets.strip.upcase
  case resposta
  when 'S'
    p 'Que legal vamos iniciar'
    escolha_uma_letra
  when 'N'
    p 'Que pena !! até a proxima.'
  else
    p 'Opção invalida Digite S ou N'
    saldação
    resposta =  gets.strip.upcase
  end
end
saldação


