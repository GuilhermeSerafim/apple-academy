// 1
let quantidadeDeItens = Int(readLine() ?? "") ?? 0
var items = [String]()
for _ in 0...quantidadeDeItens - 1 {
    if let item = readLine() {
        items.append(item)
    }
}
let itemASerMostrado = Int(readLine() ?? "") ?? 0
print("\(items[itemASerMostrado])")