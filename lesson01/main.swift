//
//  main.swift
//  lesson01
//
//  Created by GUILHERME DA SILVA SERAFIM on 10/11/25.
//

import Foundation


print("Hello World!")
var variavel = 0
let constante = 10
let nome: String = "João"
let idade: Int = 25
let altura: Double = 1.75
let estudante: Bool = true
let hobbies: [String] = ["Futebol", "Programação", "Viagens"]
let endereco: [String: String] = ["rua": "Rua A", "numero": "123"]
let tupla: (String, Int, Double) = ("João", 25, 1.75)
let opcional: String? = "Valor opcional"
let arrayVazio: [Int] = []
let dicionarioVazio: [String: Int] = [:]
let tuplaVazia: (Int, Int) = (0, 0)
let opcionalNulo: String? = nil
let arrayDeTuplas: [(String, Int)] = [("João", 25), ("Maria", 30)]
let dicionarioDeTuplas: [String: (Int, Double)] = ["João": (25, 1.75), "Maria": (30, 1.60)]
let arrayDeDicionarios: [[String: Int]] = [["chave1": 1, "chave2": 2], ["chave3": 3, "chave4": 4]]
let dicionarioDeArrays: [String: [Int]] = ["array1": [1, 2, 3], "array2": [4, 5, 6]]
let tuplaDeArrays: ([Int], [String]) = ([1, 2, 3], ["a", "b", "c"])
let arrayDeTuplasDeArrays: [([Int], [String])] = [([1, 2, 3], ["a", "b", "c"]), ([4, 5, 6], ["d", "e", "f"])]
let dicionarioDeTuplasDeArrays: [String: ([Int], [String])] = ["tupla1": ([1, 2, 3], ["a", "b",  "c"]), "tupla2": ([4, 5, 6], ["d", "e", "f"])]
let arrayDeDicionariosDeTuplasDeArrays: [[String: ([Int], [String])]] = [["tupla1": ([1, 2, 3], ["a", "b", "c"])], ["tupla2": ([4, 5, 6], ["d", "e", "f"])]]  // 100% Swift


print(1 + 1)
print("Olá \(nome), você tem \(idade) anos e mede \(altura)")
