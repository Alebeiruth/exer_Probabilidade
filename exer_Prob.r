#Escolha de uma carta em um baralho (52 cartas)
#probabilidade de escolher uma carta de espadas
#probabilidade de escolher uma carta que contem um figura
#probabilidade de escolher uma carta de espadas e que contem uma figura
#probabilidade de escolher uma carta de espadas ou que contem uma figura

#criacao do baralho

naipes <- c("Copas", "Paus", "Espadas", "Ouros")
numeros <- c("As", "Dois", "Tres", "Quatro", "Cinco", "Seis", "Sete", "Oito", "Nove", "Dez", "Valete", "Dama", "Rei")

#DataFrame

dfbaralho <- expand.grid(numero = numeros, naipe = naipes)
dfbaralho

#continuacao a criacao do baralho

baralho <- paste(dfbaralho$numero, dfbaralho$naipe)
baralho

#Evento A: escolher uma carta de espadas
#P(A) = ?

espadas <- paste(numeros, "Espadas")
espadas

baralho %in% espadas

ProbA <- mean(baralho %in% espadas)
#P(A) = 13/52

#Evento B: escolher uma carta que contem um figura
#P(B) = 

figurasValete <- paste("valete", naipes)
figurasValete
figurasDamas <- paste("Dama", naipes)
figurasDamas
figuraRei <- paste("Rei", naipes)
figuraRei
figuras <- c(figurasValete, figurasDamas, figuraRei)
figuras

baralho %in% figuras

ProbB <- mean(baralho %in% figuras)
#P(B) = 12/52

#Evento C: escolher uma carta de espadas e que contem uma figura
#P(C) = ?
figurasEspadas <- c("valete Espadas", "Dama Espadas", "Rei Espadas")
figurasEspadas

baralho %in% figurasEspadas

ProbC <- mean(baralho %in% figurasEspadas)
#P(C) = 3/52 (intersecao dos eventos A e B)

#Evento D: escolher uma carta de espadas ou que contem uma figura
#P(D) = ?

ProbD <- ProbA + ProbB - ProbC
ProbD
