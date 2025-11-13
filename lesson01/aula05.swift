// Aula 05 - Funções
// Exercício 1
// let x = Int(readLine()!)!
// let y = Int(readLine()!)!
// func calc(_ a: Int, _ b: Int) -> Int {
//     return a * b
// }
// print("Dano causado: \(calc(x, y))")

// Exercício 2
// let x = Int(readLine()!)!
// let y = Int(readLine()!)!
// func calc(_ a: Int, _ b: Int) -> Int {
//     return a - b
// }
// let vidaRestante = calc(x, y)

// if(vidaRestante <= 0) {
//     print("Personagem derrotado")
// } else {
//     print("Vida restante: \(vidaRestante)")
// }

// Exercício 3
let x = Int(readLine()!)!
let y = Int(readLine()!)!
let z = Int(readLine()!)!
func calc(_ a: Int, _ b: Int, _ c: Int) -> Int {
    (a * b) + c
}
print("Experiencia ganha: \(calc(x, y, z))")