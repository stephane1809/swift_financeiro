//
//  main.swift
//  financeiro
//
//  Created by Stephane Girão Linhares on 09/03/22.
//

import Foundation

// RENDA
var renda: Double?

while (true){
    print("Digite sua renda mensal: ", terminator: "")
    let intRenda = readLine()

    renda = Double(intRenda!)
    if renda == nil {
        print ("ERRO. Valor inserido não corresponde a numérico")
    }
    else {
        break
    }
}
let rendaInicial = renda

// RENDA EXTRA
var rendaExtra: Double?
var res1: String?

while (true){
    print("\nRecebeu alguma renda extra? ", terminator: "")
    let res = readLine()
    res1 = res
    if(res1 != "s" &&     res1 != "n") {
        print("ERRO. Digite 's' para sim ou 'n' para não")
    }else{
        if res1 == "n"{
            rendaExtra = 0
          break
        }else{
            print("Valor da renda extra: ", terminator: "")
            var valor = readLine()
            rendaExtra = Double(valor!)
            if rendaExtra == nil{
                print("\nERRO. Valor inserido não corresponde a numérico")
            }
            break
        }
    }
}

// CONTAS FIXAS
var c1: String = "Celular"
var c2: String = "Transporte"
var v1: Double = 60
var v2: Double = 165.6

print("""

 ---------------------------
|        CONTAS FIXAS       |
 ---------------------------
  🔴 \(c1)  |  💰 \(v1) $
  🔴 \(c2)  |  💰 \(v2) $
""")

// PERGUNTA SOBRE ADICIONAR CONTAS FIXAS
var count = 0
var listNome: [String] = []
var listValor: [Double] = []
var resposta: String?
var valorDouble: Double?
while (true){
    print("\nDeseja adicionar mais alguma conta fixa? ", terminator: "")
    let res = readLine()
    resposta = res
    if(resposta != "s" && resposta != "n") {
        print("ERRO. Digite 's' para sim ou 'n' para não")
    }else{
        if resposta == "n"{
          break
        }else{
            print("\nNome da conta fixa: ", terminator: "")
            var nome = readLine()
            listNome.append(nome!)
            print("Valor da conta fixa: ", terminator: "")
            var valor = readLine()
            valorDouble = Double(valor!)
            if valorDouble == nil{
                print("\nERRO. Valor inserido não corresponde a numérico")
            }else{
                listValor.append(valorDouble!)
                count += 1
            }
        }
    }
}



// ADICIONA CONTAS VARIÁVEIS
print("""

 ----------------------------
|      CONTAS VARIÁVEIS      |
 ----------------------------
  🟠           |   💰      $
""")

var count2 = 0
var listNomeV: [String] = []
var listValorV: [Double] = []
var respostaV: String?
var valorDoubleV: Double?
while (true){
    print("\nDeseja adicionar mais contas variáveis? ", terminator: "")
    let res = readLine()
    respostaV = res
    if(respostaV != "s" && respostaV != "n") {
        print("ERRO. Digite 's' para sim ou 'n' para não")
    }else{
        if respostaV == "n"{
          break
        }else{
            print("\nNome da conta variável: ", terminator: "")
            var nome = readLine()
            listNomeV.append(nome!)
            print("Valor da conta variável: ", terminator: "")
            var valor = readLine()
            valorDoubleV = Double(valor!)
            if valorDoubleV == nil{
                print("\nERRO. Valor inserido não corresponde a numérico")
            }else{
                listValorV.append(valorDoubleV!)
                count2 += 1
            }
        }
    }
}

// ADICIONA NOVAS CONTAS FIXAS NA TEBELA

print("""

 ---------------------------
|        CONTAS FIXAS       |
 ---------------------------
  🔴 \(c1)  |  💰 \(v1) $
  🔴 \(c2)  |  💰 \(v2) $
""")
var gastosFixos: Double = (v1 + v2)
while count != 0 {
    print("  🔴 \(listNome[count - 1]) |  💰 \(listValor[count - 1]) $")
    renda! -= listValor[count - 1]
    gastosFixos += listValor[count - 1]
    count -= 1
}

// ADICIONA NOVAS CONTAS VARIÁVEIS NA TEBELA

print("""

 ----------------------------
|      CONTAS VARIÁVEIS      |
 ----------------------------
""")
var gastosVariaveis: Double = 0
while count2 != 0 {
    print("  🟠 \(listNomeV[count2 - 1]) |  💰 \(listValorV[count2 - 1]) $")
    renda! -= listValorV[count2 - 1]
    gastosVariaveis += listValorV[count2 - 1]
    count2 -= 1
}


// CÁLCULOS DE RENDIMENTO
var rendimento: Double

rendimento = (renda! - v1 - v2 + rendaExtra!)


print("""

 ------------------------------
|      GERÊNCIA FINANCEIRA     |
 ------------------------------
""")
print("  🟢 Renda Inicial: ",rendaInicial!,"$")
print("  🟢 Renda Extra: ",rendaExtra!,"$")
print("  🔴 Gastos Fixos: ",gastosFixos,"$")
print("  🟠 Gastos Variáveis: ",gastosVariaveis,"$")
print(" _____________________________")
print("  💸 Gastos totais: ", (gastosFixos + gastosVariaveis),"$")
print("  💰 Rendimento: ", rendimento,"$")
print("\n")
