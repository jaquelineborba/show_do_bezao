require_relative 'ascii'

def nivel_dificil
    #Perguntas
    a = "Qual das alternativas apresenta os Presidentes do Brasil em ordem de sucessão? \n "
    b = "Qual destas frases foi dita pelo Papa Francisco? \n "
    c = "Qual a doença sexualmente transmissível que virou surto no Brasil em 2017? \n "
    d = "Quais as respectivas cores da reciclagem do papel, do vidro, do metal e do plástico? \n "
    e = "Quais as maiores pandemias da história? \n "
    f = "De quem é a famosa frase “Penso, logo existo”? \n "
    g = "Quais os planetas do sistema solar? \n "
    h = "Quais são os cromossomos que determinam o sexo masculino? \n "
    i = "Quais os nomes dos três Reis Magos? \n "
    j = "As pessoas de qual tipo sanguíneo são consideradas doadores universais? \n "

    #Opcao 1
    a1 = "1 - Dilma Rousseff, Lula, Jair Bolsonaro \n"
    b1 = "1 - Não existe mãe solteira. Mãe não é um estado civil \n"
    c1 = "1 - Candidíase \n"
    d1 = "1 - verde, azul, vermelho e amarelo \n"
    e1 = "1 - Peste negra e covid-19 \n"
    f1 = "1 - Sócrates \n"
    g1 = "1 - Terra, Vênus, Saturno, Júpiter, Marte, Netuno, Mercúrio \n"
    h1 = "1 - Os Y \n"
    i1= "1 - Belchior, Gaspar e Baltazar \n"
    j1 = "1 - Tipo A \n"


    # Opcao 2
    a2 = "2 - Dilma Rousseff, Michel Temer, Jair Bolsonaro \n"
    b2 = "2 - Ter fé é assinar uma folha em branco e deixar que Deus nela escreva o que quiser \n"
    c2 = "2 - Sífilis \n"
    d2 = "2 - azul, verde, amarelo e vermelho \n"
    e2 = "2 - Gripe espanhola e covid-19 \n"
    f2 = "2 - Descartes \n"
    g2 = "2 - Terra, Vênus, Saturno, Urano, Júpiter, Marte, Netuno, Mercúrio \n"
    h2 = "2 - Os X \n"
    i2 = "2 - Gaspar, Nicolau e Natanael \n"
    j2 = "2 - Tipo O \n"


    # Arrays
    perguntas = [a, b, c, d, e, f, g, h, i, j]
    opcao1 = [a1, b1, c1, d1, e1, f1, g1, h1, i1, j1]
    opcao2 = [a2, b2, c2, d2, e2, f2, g2, h2, i2, j2]
    gabarito = [2, 1, 2, 2, 1, 2, 2, 1, 1, 2]


    contador = 0
    vida = 3
    # ************************** Main ******************************
        x = 0
        sair = 0

        while x < 10 && vida > 0  
            print "\n"
            print "*************************************** \n"
            print "*********** #{x+1}ª PERGUNTA ********** \n"
            print "*************************************** \n"
            print "\n"
            puts perguntas[x]
            puts opcao1[x]
            puts opcao2[x]

            puts "Resposta: "
            resp = gets.chomp.to_i

            if resp == 2 or resp == 1
                if resp == gabarito[x]
                    acertou_ascii
                    print "\n"
                    print "*************************************** \n"
                    print "******* PARABÉNS! VC ACERTOU!!! ******* \n"
                    print "*************************************** \n"
                    print "\n"
                    contador += 1
                else
                    errou_ascii
                    print "\n"
                    print "*************************************** \n"
                    print "******* EEEEEEERROUUUUUUUUUUU!! ******* \n"
                    print "*************************************** \n"
                    print "\n"
                    vida = vida - 1
                end
                print "\n"
                print "**************************************** \n"
                print "** Você está com #{contador} ponto(s) ** \n"
                print "** Você ainda possui #{vida} vida(s) *** \n"
                print "**************************************** \n"
                print "\n\n"
        
                x += 1    
            
            elsif resp == 0
                sair_ascii
                vida = 0
                sair = 1    
            else
                print "\n"
                print "*************************************** \n"
                print "*** OPÇÃO INVÁLIDA. TENTE NOVAMENTE *** \n"
                print "*************************************** \n"
                print "\n"
                x = x
            end     
        end
        
        if vida == 0 && sair == 1
            print "\n"
            print "******************************************** \n"
            print "******* VOCÊ SAIU DO JOGO! ATÉ LOGO! ******* \n"
            print "******************************************** \n"
            print "\n"
        
        elsif vida == 0     
            perdeu_ascii
            print "\n"
            print "******************************************** \n"
            print "******** VOCE PERDEU. VIDA: #{vida} ******** \n"
            print "******************************************** \n"
            print "\n"

        elsif contador >= 7
            ganhou_ascii
            print "\n"
            print "******************************************** \n"
            print "********** PARABÉNS! VOCÊ GANHOU! ********** \n"  
            print "******************************************** \n"
            print "\n"          
    end
end