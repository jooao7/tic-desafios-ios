/*:
## Cargos.
 
 Outra parte fundamental do sistema são os cargos.
 
 Todos os colaboradores de uma escola possuem um dos seguintes cargos:
 
 - Monitor
 - Professor
 - Coordenador
 - Diretor
 - Assistente
 
 **[DESAFIO]** Como você organizaria essa estrutura?
 
 > Dica: Você pode usar *enum* para isso.
 
 Abaixo, segue um exemplo de como seria um *enum* para guardar os signos do zodíaco ✨.
 
 */

enum Signo {
    case aries
    case touro
    case gemeos
    case cancer
    case leao
    case virgem
    case libra
    case escorpiao
    case sagitario
    case capricornio
    case aquario
    case peixes
}

let meuSigno: Signo = .aries

// Seu Enum aqui!

enum Cargo {
    case monitor
    case professor
    case coordenador
    case diretor
    case assistente
}

let cargoDoProfessor: Cargo = .professor
let cargoDoCoordenador: Cargo = .coordenador
let cargoDoMonitor: Cargo = .monitor
let cargoDoDiretor: Cargo = .diretor
let cargoDoAssistente: Cargo = .assistente

/*:
 Perfeito! Agora que você criou um *enum* para os cargos de uma escola, é hora de incrementarmos um pouco mais a nossa estrutura.
 
 Cada cargo da escola possui uma abreviação. São elas:
 
 - Monitor = Mntr.
 - Professor = Prof.
 - Coordenador = Coord.
 - Diretor = Dir.
 - Assistente = Asst.
 
 **[DESAFIO]** Como você faria essa funcionalidade?
 
 > Dica: Você pode criar uma *function* para isso.
 
 Abaixo, segue um exemplo de como seria essa *function* para o nosso *enum* dos signos do zodíaco ✨.
 */

func abreviacao(doSigno signo: Signo) -> String {
    switch signo {
    case .aries:
        return "♈️"
    case .touro:
        return "♉️"
    case .gemeos:
        return "♊️"
    case .cancer:
        return "♋️"
    case .leao:
        return "♌️"
    case .virgem:
        return "♍️"
    case .libra:
        return "♎️"
    case .escorpiao:
        return "♏️"
    case .sagitario:
        return "♐️"
    case .capricornio:
        return "♑️"
    case .aquario:
        return "♒️"
    case .peixes:
        return "♓️"
    }
}

let abreviacaoMeuSigno = abreviacao(doSigno: meuSigno)
let abreviacaoAries = abreviacao(doSigno: .aries)

// Sua function aqui!
func abreviacaoDoCargo (_ cargo: Cargo) -> String {
    switch cargo {
    case .monitor:
        return "Mntr."
    case .professor:
        return "Prof."
    case .coordenador:
        return "Coord."
    case .diretor:
        return "Dir."
    case .assistente:
        return "Asst."
    }
}
//Exemplo
let abreviacaoDoCargoProfessor = abreviacaoDoCargo(.professor)
let abreviacaoDoCargoCoordenador = abreviacaoDoCargo(.coordenador)
/*:
Pronto!
 
 A próxima lição te aguarda!

[Anterior: Salários](@previous) | Página 3 de 5  |  [Na sequência: Colaboradores](@next)
*/
