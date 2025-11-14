// Criterio de avaliacao: o quanto vc absorveu da logicas que aprendeu durante a trilha
// Historinha de RPG
// abre.ai/ps-5

import Foundation

// MARK: - Estado do jogo

struct GameState {
    var ordem: Int = 0
    var caos: Int = 0
    var ruptura: Int = 0
    var eventos: [String] = []
}


let logoRupture = #"""
__________              __                        
\______   \__ _________/  |_ __ _________   ____  
 |       _/  |  \____ \   __\  |  \_  __ \_/ __ \ 
 |    |   \  |  /  |_> >  | |  |  /|  | \/\  ___/ 
 |____|_  /____/|   __/|__| |____/ |__|    \___  >
        \/      |__|                           \/ 
            THE TEMPORAL DISRUPTION GAME
"""#


// Último estado jogado (para ver a linha do tempo fora da partida)
var ultimoEstado: GameState? = nil

// MARK: - Utilitários

func limparTela() {
    // Limpeza "manual" de terminal (funciona em qualquer lugar)
    for _ in 0..<10 {
        print("")
    }
}

func pausar() {
    print("\nAperte ENTER para continuar...")
    _ = readLine()
}

func lerOpcaoInt(min: Int, max: Int) -> Int {
    while true {
        if let entrada = readLine(), let valor = Int(entrada), valor >= min, valor <= max {
            return valor
        } else {
            print("Por favor, digite um número entre \(min) e \(max).")
        }
    }
}

// MARK: - Menus

func mostrarMenuPrincipal() {
    limparTela()
    print(logoRupture)
    print("")
    print("1 - Iniciar Rupture")
    print("2 - Ver Lore")
    print("3 - Ver Linha do Tempo")
    print("4 - Créditos")
    print("5 - Sair\n")
    print("Escolha uma opção:")
}

func mostrarLore() {
    limparTela()
    print("=== LORE DE RUPTURE ===\n")
    print("""
A cada era, o espaço-tempo se dobra:
ora espaço sem tempo; ora tempo sem espaço.
Quando os dois colidem, nasce a disrupção —
como as borboletas negras que prosperaram
na 2ª Revolução Industrial graças à fuligem.

Você não é um herói comum.
Você NÃO se adapta ao mundo.
Você é a própria RUPTURA no tecido da realidade.
""")
    pausar()
}

func mostrarLinhaDoTempo() {
    limparTela()
    print("=== LINHA DO TEMPO ===\n")

    guard let estado = ultimoEstado else {
        print("Você ainda não iniciou nenhuma Rupture.")
        pausar()
        return
    }

    print("Pontuação atual:")
    print("Ordem   : \(estado.ordem)")
    print("Caos    : \(estado.caos)")
    print("Ruptura : \(estado.ruptura)\n")

    if estado.eventos.isEmpty {
        print("Nenhum evento registrado ainda.")
    } else {
        print("Eventos marcantes:")
        for evento in estado.eventos {
            print("- \(evento)")
        }
    }

    pausar()
}

func mostrarCreditos() {
    limparTela()
    print("=== CRÉDITOS ===\n")
    print("Rupture - RPG de ruptura temporal em terminal.")
    print("Criado por: Guiler, The Rupturer")
    print("Desenvolvido para o Final Challenge - Apple Developer Academy | SENAC.")
    pausar()
}

// MARK: - Eventos históricos

func jogarEventoFogo(estado: inout GameState) {
    limparTela()
    print("=== EVENTO 1: A DESCOBERTA DO FOGO ===\n")
    print("""
A primeira chama separa o humano do animal.
A noite deixa de ser um abismo absoluto.

Você, como Ruptura, pode decidir como o fogo entra na história.
""")

    print("1 - Preservar o fogo como ritual sagrado")
    print("2 - Usar o fogo como arma tribal")
    print("3 - Ensinar o fogo a outras espécies\n")
    print("Escolha: ")

    let opcao = lerOpcaoInt(min: 1, max: 3)

    switch opcao {
    case 1:
        estado.ordem += 2
        estado.eventos.append("Você tornou o fogo um ritual controlado pelas tribos.")
    case 2:
        estado.caos += 2
        estado.eventos.append("Você transformou o fogo em arma de guerra primitiva.")
    case 3:
        estado.ruptura += 3
        estado.eventos.append("Você ensinou o fogo a outras espécies e criou a Era Primal Disruptiva.")
    default:
        break
    }
}

func jogarEventoEscrita(estado: inout GameState) {
    limparTela()
    print("=== EVENTO 2: A INVENÇÃO DA ESCRITA ===\n")
    print("""
Símbolos deixam de ser apenas desenhos
e se tornam memória gravada no tempo.

Você pode decidir como a escrita nasce no mundo.
""")

    print("1 - Padronizar leis e registros em tábuas")
    print("2 - Espalhar escrita secreta entre rebeldes")
    print("3 - Alterar o alfabeto para reescrever o passado\n")
    print("Escolha: ")

    let opcao = lerOpcaoInt(min: 1, max: 3)

    switch opcao {
    case 1:
        estado.ordem += 2
        estado.eventos.append("Você organizou a escrita em leis rígidas e registros oficiais.")
    case 2:
        estado.caos += 2
        estado.eventos.append("Você espalhou códigos secretos que inflamam rebeliões.")
    case 3:
        estado.ruptura += 3
        estado.eventos.append("Você alterou o alfabeto e fez o passado oscilar como um eco instável.")
    default:
        break
    }
}

func jogarEventoRevolucaoIndustrial(estado: inout GameState) {
    limparTela()
    print("=== EVENTO 3: A REVOLUÇÃO INDUSTRIAL ===\n")
    print("""
Máquinas rugem, chaminés sobem ao céu.
A fuligem escurece a cidade.

Borboletas negras prosperam na fumaça —
a própria natureza aprende a hackear o ambiente.

Como a Ruptura age aqui?
""")

    print("1 - Controlar as fábricas com regras rígidas")
    print("2 - Incentivar revoltas e colapsos de máquinas")
    print("3 - Fundir máquina e natureza em tecnofauna viva\n")
    print("Escolha: ")

    let opcao = lerOpcaoInt(min: 1, max: 3)

    switch opcao {
    case 1:
        estado.ordem += 2
        estado.eventos.append("Você criou uma ordem industrial rígida e controlada.")
    case 2:
        estado.caos += 2
        estado.eventos.append("Você acendeu greves e destruição nas cidades industriais.")
    case 3:
        estado.ruptura += 3
        estado.eventos.append("Você deu vida à tecnofauna: borboletas negras mecânicas dançam sobre as fábricas.")
    default:
        break
    }
}

// MARK: - Final

func mostrarFinal(estado: GameState) {
    print("=== CONCLUSÃO DA RUPTURE ===\n")
    print("Ordem   : \(estado.ordem)")
    print("Caos    : \(estado.caos)")
    print("Ruptura : \(estado.ruptura)\n")

    if estado.ruptura >= estado.ordem && estado.ruptura >= estado.caos {
        print("""
FINAL RUPTURA:

Você não escolheu um lado.
Você redesenhou o tabuleiro.

A história deixou de ser linha
e virou uma teia instável de possibilidades.
Você é lembrado como a própria Ruptura.
""")
    } else if estado.ordem >= estado.caos {
        print("""
FINAL ORDEM:

Você costurou o espaço-tempo com regras,
leis e estruturas.

O mundo é estável — mas previsível.
A disrupção foi contida, por enquanto.
""")
    } else {
        print("""
FINAL CAOS:

Você quebrou as colunas do tempo.
Guerras, colapsos e mutações se espalham.

Nada é estável.
A Ruptura virou tempestade permanente.
""")
    }

    print("\nLinha do tempo de eventos:")
    for evento in estado.eventos {
        print("- \(evento)")
    }
}

// MARK: - Jogo principal

func iniciarJogo() {
    var estado = GameState()

    limparTela()
    print("Bem-vindo(a) a RUPTURE.\n")
    print("""
Você é a anomalia que surge quando espaço e tempo colidem.
Sua missão: intervir em três eventos históricos
e ver que tipo de mundo nasce dessas escolhas.
""")
    pausar()

    // Por enquanto: 3 eventos fixos em sequência
    jogarEventoFogo(estado: &estado)
    jogarEventoEscrita(estado: &estado)
    jogarEventoRevolucaoIndustrial(estado: &estado)

    limparTela()
    mostrarFinal(estado: estado)
    pausar()

    // Guarda o último estado jogado
    ultimoEstado = estado
}

// MARK: - Loop do programa

func executarRupture() {
    var executando = true

    while executando {
        mostrarMenuPrincipal()
        let opcao = lerOpcaoInt(min: 1, max: 5)

        switch opcao {
        case 1:
            iniciarJogo()
        case 2:
            mostrarLore()
        case 3:
            mostrarLinhaDoTempo()
        case 4:
            mostrarCreditos()
        case 5:
            print("Encerrando Rupture... até a próxima dobra do espaço-tempo.")
            executando = false
        default:
            break
        }
    }
}

// Início do programa
executarRupture()
