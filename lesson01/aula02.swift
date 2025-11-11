    
    
// let x = Int(readLine() ?? "") ?? 0
// if x >= 18 {
// 	print("O aprendiz está pronto para o ritual da maturidade!")
    
// } else {
// 	print("O aprendiz ainda não atingiu a idade necessária para o ritual.")
// }


// 2
import Foundation

let d = Int(readLine() ?? "") ?? 0
let c = Int(readLine() ?? "") ?? 0

if(d <= 3) {
	print("a pé")
} else if(d <= 20) {
	if(c >= 1) {
		print("cavalo")
		exit(0)
	} else {
		print("Não é possível viajar")
		exit(0)
	}
} else if(d <= 100) {
	if(c >= 2) {
		print("carro mágico")
		exit(0)
	} else {
		print("Não é possível viajar")
		exit(0)
	}
} else {
	if(c >= 5) {
		print("teletransporte")
		exit(0)
	} else {
		print("Não é possível viajar")
		exit(0)
	}
}