//
//  main.swift
//  Desafio 3
//
//  Created by Aluno Mack on 04/07/25.
//

import Foundation

func isOddOrEven(number: Int) -> Bool{
    return number % 2 == 0
}

guard let input = readLine() else{
    print("Nil")
    exit(1)
}

guard let value = Int(input) else{
    print("Input is not a number or Nil value")
    exit(1)
}

if(isOddOrEven(number: value)){
    print("O numero eh par")
    for i in 1...value {
        print(i)
    }
} else{
    print("O numero eh impar")
    for i in 1...value{
        if(!isOddOrEven(number: i)){
            print(i)
        }
    }
}
