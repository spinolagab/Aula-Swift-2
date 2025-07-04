//
//  main.swift
//  Desafio 3
//
//  Created by Aluno Mack on 04/07/25.
//

import Foundation

// Se o numero eh divisivel por qualquer numero que nao seja 1 ou ele mesmo entao ele nao eh primo
// Se o numero for invalido retorna false

func isPrime(number: Int) -> Bool{
  if(number <= 1){
    return false
  }

  for i in 2...number{

    if(number % i == 0 && number != i){
      return false
    }

  }

  return true
}

// Retorna a quantidade de numeros primos na tabuada
func tabuada(number: Int) -> Int{
  var count: Int
  count = 0

  for i in 1...10{

    print("\(number) x \(i) = \(number * i)")
    
    if(isPrime(number: (number * i))){
      print("Primo\n")
      count += 1
    }
    else{
      print("Não é primo\n")
    }

  }
  return count
}

print("Insira um valor para gerar a sua tabuada:")

guard let input = readLine() else{
  print("Nil")
  exit(1)
}

guard let value = Int(input) else{
  print("Error: Input is not a number or is a Nil value")
  exit(1)
}

let totalPrimes: Int
totalPrimes = tabuada(number: value)

print("Total de numeros primos encontrados: \(totalPrimes)")