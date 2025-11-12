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

// 2
let quantidadeDeItens2 = Int(readLine() ?? "") ?? 0
var items2 = [String]()
for _ in 0...quantidadeDeItens2 - 1 {
    if let item = readLine() {
        items2.append(item)
    }
}
let itemASerMostrado2 = readLine() ?? ""
if items2.contains(itemASerMostrado2) {
    print("Total de itens: \(items2.count). O item \(itemASerMostrado2) esta no inventario")
} else {
    print("Total de itens: \(items2.count). O item \(itemASerMostrado2) nao esta no inventario")
}