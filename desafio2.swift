//
//  main.swift
//  Desafio 3
//
//  Created by Aluno Mack on 04/07/25.
//

import Foundation

func fatorial(number: Int)-> Int{
  if(number == 0){
    return 1
  }
  return number * fatorial(number: (number - 1))
}

func isOddOrEven(number: Int) -> Bool{
    return number % 2 == 0
}

guard let input = readLine() else{
  print("Nil")
  exit(1)
}

guard var value = Int(input) else{
  print("Error: Input is not a number or is a Nil value")
  exit(1)
}

value = fatorial(number: value)

print("Resultado: \(value)")

if(isOddOrEven(number: value)){
  print("Par")
  exit(0)
}

print("Impar")