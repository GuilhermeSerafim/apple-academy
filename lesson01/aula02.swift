import Foundation
    
// let x = Int(readLine() ?? "") ?? 0
// if x >= 18 {
// 	print("O aprendiz está pronto para o ritual da maturidade!")
    
// } else {
// 	print("O aprendiz ainda não atingiu a idade necessária para o ritual.")
// }


// 2

// let d = Int(readLine() ?? "") ?? 0
// let c = Int(readLine() ?? "") ?? 0

// if(d <= 3) {
// 	print("a pé")
// } else if(d <= 20) {
// 	if(c >= 1) {
// 		print("cavalo")
// 		exit(0)
// 	} else {
// 		print("Não é possível viajar")
// 		exit(0)
// 	}
// } else if(d <= 100) {
// 	if(c >= 2) {
// 		print("carro mágico")
// 		exit(0)
// 	} else {
// 		print("Não é possível viajar")
// 		exit(0)
// 	}
// } else {
// 	if(c >= 5) {
// 		print("teletransporte")
// 		exit(0)
// 	} else {
// 		print("Não é possível viajar")
// 		exit(0)
// 	}
// }



// 3

// let x = Int(readLine() ?? "") ?? 0
// if x <= 9 {
// 	print("Iniciante")
// } else if x <= 19 {
// 	print("Aprendiz")
// } else if x <= 29 {
// 	print("Experiente")
// } else {
// 	print("Mestre")
// }

// // 4
// let a = Int(readLine() ?? "") ?? 0
// let b = Int(readLine() ?? "") ?? 0
// if a == b {
// 	print("Empate Místico!")
// } else if a == 1 && b == 3 || a == 2 && b == 1 || a == 3 && b == 2 {
// 	print("Você venceu o duelo!")
// } else {
// 	print("O Mago Ancião venceu!")
// }

// // 5
// let n = Int(readLine() ?? "") ?? 0
// if(n >= 5) {
// 	print("Pode entrar na masmorra!")
// } else {
// 	print("Ainda nao esta pronto...")
// }

// // 6
// let n = Int(readLine() ?? "") ?? 0
// if(n <= 50) {
// 	print("Siga pelo caminho da esquerda.")
// } else {
// 	print("Siga pelo caminho da direita.")
// }

// // 7
// let m = Int(readLine() ?? "") ?? 0
// let n = Int(readLine() ?? "") ?? 0
// if m >= 100 && n >= 10 {
// 	print("Voce pode comprar: Pocao Rara")
// } else if m >= 50 || n >= 5 {
// 	print("Voce pode comprar: Espada Comum")
// } else {
// 	print("Voce nao pode comprar nada.")
// }

// // 8
// let jogador = readLine() ?? ""
// switch jogador {
// case "Guerreiro":
// 	print("Habilidade: Golpe Devastador")
// case "Mago":
// 	print("Habilidade: Bola de Fogo")
// case "Arqueiro":
// 	print("Habilidade: Flecha Perfurante")
// case "Ladino":
// 	print("Habilidade: Ataque Furtivo")
// default:
// 	print("Classe invalida")
// }

// 9
let dificuldade = readLine() ?? ""
switch dificuldade {
case "Facil":
	print("Recompensa: 50 moedas")
case "Medio":
	print("Recompensa: 100 moedas e uma pocao")
case "Dificil":
	print("Recompensa: 200 moedas e um item raro")
case "Lendario":
	print("Recompensa: 500 moedas, um item lendario e titulo especial")
default:
	print("Dificuldade invalida")
}