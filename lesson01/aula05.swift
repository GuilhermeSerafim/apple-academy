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
// let x = Int(readLine()!)!
// let y = Int(readLine()!)!
// let z = Int(readLine()!)!
// func calc(_ a: Int, _ b: Int, _ c: Int) -> Int {
//     (a * b) + c
// }
// print("Experiencia ganha: \(calc(x, y, z))")

// Exercício 4
// let nomeHeroi = readLine()!
// let habilidades = readLine()!.split(separator: " ").map { String($0) }
// let vida = habilidades[0]
// let mana = habilidades[1]
// let forca = habilidades[2]

// print("Heroi: \(nomeHeroi) - Vida: \(vida), Mana: \(mana), Forca: \(forca)")
// Exercício 5
let nomeInimigo = readLine()!
let nivelInimigo = Int(readLine()!)!
func calcularRecompensas(nivel: Int) -> (xp: Int, moedas: Int
) {
    let xp = nivel * 10
    let moedas = nivel * 5
    return (xp, moedas)
}
let (xp, moedas) = calcularRecompensas(nivel: nivelInimigo)
print("Venceu \(nomeInimigo)! Ganhou \(xp) XP e \(moedas) moedas")