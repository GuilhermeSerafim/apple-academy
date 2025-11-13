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
// let nomeInimigo = readLine()!
// let nivelInimigo = Int(readLine()!)!
// func calcularRecompensas(nivel: Int) -> (xp: Int, moedas: Int
// ) {
//     let xp = nivel * 10
//     let moedas = nivel * 5
//     return (xp, moedas)
// }
// let (xp, moedas) = calcularRecompensas(nivel: nivelInimigo)
// print("Venceu \(nomeInimigo)! Ganhou \(xp) XP e \(moedas) moedas")

// Exercício 6
// let nivelAtual = Int(readLine()!)!
// let experienciaAtual = Int(readLine()!)!
// func calcExperienciaParaSubirNivel(nivel: Int, experiencia: Int) -> Int {
//     let xpNecessaria = nivel * 100
//     let xpFaltante = xpNecessaria - experiencia
//     return xpFaltante
// }
// let  xpFaltante = calcExperienciaParaSubirNivel(nivel: nivelAtual, experiencia: experienciaAtual)
// if(xpFaltante <= 0) {
//     print("Pode subir para o nivel \(nivelAtual + 1)!")
// } else {
//     print("Precisa de \(xpFaltante) XP para subir de nivel")
// }

// Exercício 7
// let vidaAtual = Int(readLine()!)!
// let vidaMaxima = Int(readLine()!)!
// let curaPocao = Int(readLine()!)!
// func usarPocao(vidaAtual: Int, vidaMaxima: Int, cura: Int) -> Int {
//     let curaEfetiva = cura > 0 ? cura : 50
//     // retorna o valor minimo entre vidaAtual + curaEfetiva e vidaMaxima
//     let novaVida = min(vidaAtual + curaEfetiva, vidaMaxima)
//     return novaVida
// }
// print("Vida apos pocao: \(usarPocao(vidaAtual: vidaAtual, vidaMaxima: vidaMaxima, cura: curaPocao))")

// Exercício 8
// enum EquipamentoErro: Error { case nivelInsuficiente, forcaInsuficiente }
// let x = readLine()!.split(separator: " ").map { Int($0)! }
// let y = readLine()!.split(separator: " ").map { Int($0)! }
// let n = x[0]
// let f = x[1]
// let nr = y[0]
// let fr = y[1]

// func checkEquipamento(nivelPersonagem: Int, forcaPersonagem: Int, nivelRequerido: Int, forcaRequerida: Int) throws -> String {
//     if(forcaPersonagem < forcaRequerida) {
//         throw EquipamentoErro.forcaInsuficiente
//     }
//     if(nivelPersonagem < nivelRequerido) {
//         throw EquipamentoErro.nivelInsuficiente
//     }
//     return "Equipamento validado com sucesso"
// }
// do {
//     let resultado = try checkEquipamento(nivelPersonagem: n, forcaPersonagem: f, nivelRequerido: nr, forcaRequerida: fr)
//     print(resultado)
// } catch EquipamentoErro.forcaInsuficiente {
//     print("Erro: Forca insuficiente")
// } catch EquipamentoErro.nivelInsuficiente {
//     print("Erro: Nivel insuficiente")
// } catch {
//     print("Erro desconhecido")
// }

// Exercício 9
enum RequisitoErro: Error { case nivelInsuficiente, missoesInsuficientes, ouroInsuficiente }
let req = readLine()!.split(separator: " ").map { Int($0)! }
let n = req[0]
let m = req[1]
let o = req[2]
func valid(_ nivel: Int, _ missoesCompletas: Int, _ ouro: Int) throws -> String {
    if(nivel < 20) {
        throw RequisitoErro.nivelInsuficiente
    }
    if(missoesCompletas < 5) {
        throw RequisitoErro.missoesInsuficientes
    }
    if(ouro < 1000) {
        throw RequisitoErro.ouroInsuficiente
    }
    return "Missao epica aceita! Boa sorte, heroi!"
}
do {
    let resultado = try valid(n, m, o)
    print(resultado)
} catch RequisitoErro.nivelInsuficiente {
    print("Erro: Nivel minimo nao atingido")
} catch RequisitoErro.missoesInsuficientes {
    print("Erro: Experiencia insuficiente em missoes")
} catch RequisitoErro.ouroInsuficiente {
    print("Erro: Ouro insuficiente")
} catch {
    print("Erro desconhecido")
}