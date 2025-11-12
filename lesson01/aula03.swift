//
//  Lesson03 - Collections.swift
//  Criado por Guilherme Serafim
//
//  Este código demonstra o uso de Arrays, Sets, Dictionaries e Loops em Swift,
//  baseado no conteúdo da Lesson 03 do Apple Developer Academy | SENAC.
//

import Foundation

// MARK: - ARRAYS
// Um array armazena uma lista ordenada de valores do mesmo tipo.

var beatles = ["John", "Paul", "George", "Ringo"]
print("🎵 Banda original: \(beatles)")

// Adicionando novos elementos
beatles.append("Allen")
beatles.append("Adrian")
print("🎵 Após adições: \(beatles)")

// Criando arrays tipados
var scores = [Int]()
scores.append(100)
scores.append(85)
print("💯 Pontuações: \(scores)")

// Operações com arrays
var cities = ["London", "Tokyo", "Rome", "Budapest"]
print("🏙️ Ordenadas: \(cities.sorted())")
print("🏙️ Quantidade de cidades: \(cities.count)")

// Removendo elementos
cities.remove(at: 1)
print("🏙️ Após remover Tokyo: \(cities)")

// MARK: - SETS
// Um Set armazena valores únicos, sem ordem específica.

var people: Set<String> = ["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"]
print("🎬 Elenco inicial: \(people)")

// Tentando inserir duplicatas — elas são ignoradas automaticamente
people.insert("Tom Cruise")
print("🎬 Após tentar duplicar: \(people)")

// MARK: - DICTIONARIES
// Um Dictionary armazena pares chave-valor.

let employee = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]

// Acessando valores com segurança
print("👩‍🎤 Nome: \(employee["name", default: "Unknown"])")
print("👩‍🎤 Profissão: \(employee["job", default: "Unknown"])")

// Criando dicionário vazio e adicionando dados
var archEnemies = [String: String]()
archEnemies["Batman"] = "The Joker"
archEnemies["Superman"] = "Lex Luthor"
print("🦸‍♂️ Inimigos: \(archEnemies)")

// MARK: - LOOPS

// For-in loop com array
let platforms = ["iOS", "macOS", "tvOS", "watchOS"]
for os in platforms {
    print("💻 Swift funciona muito bem no \(os).")
}

// Loop com intervalo (range)
for i in 1...5 {
    print("🔢 Contando de 1 até 5: \(i)")
}

// Ignorando contador usando "_"
var lyric = "Haters gonna"
for _ in 1...5 {
    lyric += " hate"
}
print("🎶 \(lyric)")

// While loop — continua até condição ser falsa
var roll = 0
while roll != 20 {
    roll = Int.random(in: 1...20)
    print("🎲 Rolei \(roll)")
}
print("🔥 Acerto crítico!")

// Continue e Break
let filenames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]

for file in filenames {
    if !file.hasSuffix(".jpg") {
        continue // pula arquivos que não são JPG
    }
    print("📸 Encontrei imagem: \(file)")
}

// Encontrar múltiplos de dois números e parar após 10 ocorrências
let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)
        if multiples.count == 10 {
            break // encerra o loop após 10 múltiplos encontrados
        }
    }
}

print("🧮 Múltiplos de \(number1) e \(number2): \(multiples)")
