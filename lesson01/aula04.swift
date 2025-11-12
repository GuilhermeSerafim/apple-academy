// // 1
// let quantidadeDeItens = Int(readLine() ?? "") ?? 0
// var items = [String]()
// for _ in 0...quantidadeDeItens - 1 {
//     if let item = readLine() {
//         items.append(item)
//     }
// }
// let itemASerMostrado = Int(readLine() ?? "") ?? 0
// print("\(items[itemASerMostrado])")

// // 2
// let quantidadeDeItens2 = Int(readLine() ?? "") ?? 0
// var items2 = [String]()
// for _ in 0...quantidadeDeItens2 - 1 {
//     if let item = readLine() {
//         items2.append(item)
//     }
// }
// let itemASerMostrado2 = readLine() ?? ""
// if items2.contains(itemASerMostrado2) {
//     print("Total de itens: \(items2.count). O item \(itemASerMostrado2) esta no inventario")
// } else {
//     print("Total de itens: \(items2.count). O item \(itemASerMostrado2) nao esta no inventario")
// }

// // 3
// let quantidadeDeItens3 = Int(readLine() ?? "") ?? 0
// var items3 = [String]()
// for _ in 0...quantidadeDeItens3 - 1 {
//     if let item = readLine() {
//         let partes = item.split(separator: ",").map { String($0) }
//         items3.append(partes[0])
//         items3.append(partes[1])
//     }
// }
// let elemento = readLine() ?? ""

// if(items3.contains(elemento)) {
//     let index = items3.firstIndex(of: elemento)
//     print("O feitico \(elemento) tem poder: \(items3[index! + 1])")
// } else {
//     print("O feitico \(elemento) tem poder: 0")
// }

// 4
let quantidadeDeItens4 = Int(readLine() ?? "") ?? 0
var missaoERecompensa = [String]()
for _ in 0...quantidadeDeItens4 - 1 {
    if let item = readLine() {
        let partes = item.split(separator: ",").map { String($0) }
        missaoERecompensa.append(partes[0])
        missaoERecompensa.append(partes[1])
    }
}
let consultasASeremFeitas = Int(readLine() ?? "") ?? 0
var indexMissao = [Int]()
var resultado = [String]()
var todasAsConsultas = [String]()

for _ in 0...consultasASeremFeitas - 1 {
    let elemento = readLine() ?? ""
    todasAsConsultas.append(elemento)
    if(missaoERecompensa.contains(elemento)) {
        let index = missaoERecompensa.firstIndex(of: elemento)
        indexMissao.append(index!)
    } else {
        indexMissao.append(-1)
    }
}

for (i, idx) in indexMissao.enumerated() {
    if idx != -1 {
        resultado.append("A missao \(missaoERecompensa[idx]) paga: \(missaoERecompensa[idx + 1]) moedas.")
    } else {
        resultado.append("A missao \(todasAsConsultas[i]) nao esta disponivel.")
    }
}

print(resultado.joined(separator: " "))