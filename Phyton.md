    CURSO UDEMY - FELIPE MAFRA: Módulo de Phyton

* Phyton é uma linguagem "fácil", interpretativa (windows, Mac, Linux), portátil, para fins gerais, comunidade ativa, programadores no mundo (constante melhoria).

* Bibliotecas Phyton: "Módulos" (comunidade ativa no mundo inteiro). Ex: Matplotlib, Pandas, Jupyter, Numpy, Sympy, ScikitLearn, SciPy.
a) Numpy: Computação científica - manipulação de matriz n-computacional de maneira rápida e eficiente, permite a vetorização de operações aritméticas. Trabalha muito bem com listas, dicionários.
b) Sympy: Depende da biblioteca Numpy e trabalha com matrizes.
c) Pandas: Fornece suporte para estruturas de dados e ferramentas de análise de dados. É uma biblioteca que otimiza a performance de ferramentas, executando tarefas de Datascience de forma rápida e eficiente.
d) SkicitLearn: MachineLearning (algoritmos de aprendizagem)
e) Matplot: Gráficos
f) SciPy: matemática, álgebra computacional
g) Beautiful Soap: Análise de dados em Html e XmL de uma maneira que o Python possa compreender
h) Jupyter Notebook: YPython - Organizador de linguagens (Python, Scala, R, SQL) 

1. Condicionais: If, Elif, Else - Ex:
   
    if 2 > 3:
        print("Opçao 1")
    elif 2 == 3:
        print("Opção 2") 
    elif 2 < 3:
        print("Opção 3") 
    else:
        print("Opção 4")


    a = 11
    b = a % 2
    if  b == 0:    
        print("Par")
    else:
         print("Ímpar")
    

* Cuidados na identação...
     num = 9
    if num > 40:
     if num <= 50:
            print("Menor que 50")
        else:
          print("Maior que 50")
    else:
        if num <= 40:
         if num >= 10:
             print("Menor que 40 e maior que 10")
            else:
             print("Menor que 40 e menor que 10")
        
2.  Funções Built IN: Indexação - Converte a expressão em um vetor e retorna a posição de um caracter, indicado entre os colchetes. 
   
* print (trás resultados... imprime)
* find (Localiza a primeira ocorrencia de uma string dentro de uma expressão (NÃO INCLUSA A ÚLTIMA POSIÇÃO)
* upper (maiúsculas)
* lower (minúsculas)
* endswith (termina com...)
* split (transforma cada palavra em string)
Ex: 
        
        print(frase[::-1])
        frase.find('acesso')
        hino.upper()
        hino.split('Flamengo')
        hino.endswith('!')
        hino.endswith('Flamengo')

* Exercício: 
Na expressao abaixo:
Dados de acesso do cliente Universidade dos Dados

01/02/2017 "3.878.00"
02/02/2017 "6.088.00"
03/02/2017 "645.00"
04/02/2017 "10.876.00"
Necessitamos do primeiro valor de acessos 3.878 armazene o valor em uma variável e imprima.

        expr = '''Dados de acesso do cliente Universidade dos Dados
        01/02/2017 "3345.878.00" 
        02/02/2017 "6.088.00" 
        03/02/2017 "645.00" 
        04/02/2017 "10.876.00"'''
        print(expr)

Resolução:
        inicio = expr.find('"') + 1
        print(inicio)

        fim = expr.find('.00"',inicio)
        expr[inicio:fim]

3. Procedimentos
* Diferença entre RETURN e PRINT: A diferença entre um return e um print é que você pode fazer qualquer coisa com um retorno. Podemos atribuir um retorno a uma variável, fazer qualquer operação, inclusive imprimir o retorno (o print só imprime, não consigo alterar...)
* Ex:
    def soma(a,b):
        return (a + b)
        print(soma(10,20))

    def verificacao(a,b):
    
    if a > b:
        return a
    elif b > a:
        return b
    else:
        return "Numeros iguais"

    def concat(a,b):
        return a + " " + b

* Exercício: Defina um procedimento que verifique se um número é par ou ímpar
     def par,Impar(num):
        mod = num % 2

        if mod == 0:
            return("Par")
        else:
            return("Impar")

        print(parImpar(10))
        print(parImpar(11))

4. Escopo de Variáveis. (Variável global e local) Ex:
        numero = 10

      def potencia(numero,pot):
        numero = numero ** pot
        print(numero)
    
        potencia(numero,2)

        def potencia(numero,pot):
            numero2 = numero ** pot
            print(numero2)
            
        potencia(10,2)

5. Procedimentos Aninhados
    def pessoa(a):
         return a + " vai a/ao"

    def lugar(b):
        return b + "!!!"

    def frase(a,b):
        sujeito = pessoa(a)
        local = lugar(b)
        return sujeito + " " + local

Podemos aninhar procedimentos e essa é uma as funções do retorno, ou seja, passar um parâmetro para outro procedimento e obter assim um resultado mais complexo

    def maiorNum(a,b):
        if a > b:
            return a
        elif b > a:
            return b
        else:
            return a

        maiorNum(21,20)

        def maiorTres(a,b,c):
        aux = maiorNum(a,b)
        if aux > c:
            return aux
        elif c > aux:
            return c
        else:
            return aux
        
        maiorTres(56,653,862)
    
6. Listas
* Criação de lista
        linguagens = ["Python, R, Julia, PHP"]

* Lista heterogenea
        mundiais = ["Brasil",58,62,70,94,2002]

* Assim como em strings, podemos também indexar listas.
        
        pais = mundiais[0]
        titulo01 = mundiais[1]
        titulo02 = mundiais[2]
        titulo03 = mundiais[3]
        titulo04 = mundiais[4]
        titulo05 = mundiais[5]

        print(pais)
        print(titulo01)
        print(titulo02)
        print(titulo03)
        print(titulo04)
        print(titulo05)

* Atualização de listas, deletando, adicionando, removendo
        mundiais[0] = "Alemanha"

        del mundiais[1:]

        mundiais.append(2014)

        mundiais.extend([1954, 1974, 1990,1990])

        mundiais.remove(1990)

* Listas aninhadas ("matriz")
        mundiais = [["Brasil",58, 62, 70, 94, 2002], ["Alemanha",1954, 1974, 1990, 2014]]

* Concatenando
    a = ["Argentina",1986,1978]
    b = ["Alemanha",1954, 1974, 1990, 2014]
    c = ["Brasil",58, 62, 70, 94, 2002]
  
    fifa = a + b + c

    fifa[10]

* In (o verificador In, verifica se algo está na lista)
        print('Uruguai' in fifa)

* Imorimindo títulos de uma equipe
        equipe = 'Brasil'
        if equipe in fifa:
        a = fifa.index(equipe)
            print('Indice da equipe:',a)
            print(equipe)
            print(fifa[a + 1 :]) 
        else:
            print(equipe + ' não possui titulos ou não está na lista')

* Funções Built in
    #Retorna o tamanho da lista
        len(fifa)

    #Valor maximo da lista -Não funciona com listas heterogeneas
        max(fifa)

        numeros = [34,65,32,23,54,98,12]
        palavras = ['Macaco','Zebra','Cachorro','Gato'] #Alfabetica
        print(max(palavras))
        print(max(numeros))

        #Valor minimo da lista
        print(min(palavras))
        print(min(numeros))

    * Reverte a lista posicionalmente
        numeros = [10,2,8,4,5,6,7]
        numeros.reverse()
        numeros

    #Ordena a lista em ORDEM CRESCENTE
        numeros.sort()
        numeros

7. Sets (São conjuntos únicos)
        
        conjunto = set()
        conjunto.add('Java')
        conjunto.add('R')
        conjunto.add('Python')
        print(conjunto)

        
    #Sets não suportam indexaçao
            conjunto[1]
            engenheiros = set(['João', 'Jane', 'Clara', 'Celia'])
            programadores = set(['Clara', 'Sam', 'Susan', 'Celia'])
            gerentes = set(['Jane', 'Clara', 'Susan', 'Zack'])

    #Uniao
            funcionarios = engenheiros | programadores | gerentes
            funcionarios

    #Interseçao
            gerencia_de_engenharia = engenheiros & gerentes  
            gerencia_de_engenharia

    * Diferença
            gerentes = set(['Jane', 'Clara', 'Susan', 'Zack'])
            engenheiros = set(['João', 'Jane', 'Clara', 'Celia'])
             a = gerentes - engenheiros
            

            gerentes = set(['Jane', 'Clara', 'Susan', 'Zack'])
            programadores = set(['Clara', 'Sam', 'Susan', 'Celia'])
            b = gerentes - programadores
            b
   