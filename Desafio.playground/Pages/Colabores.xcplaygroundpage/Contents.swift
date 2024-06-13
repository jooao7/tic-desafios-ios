/*:
 ## Colaboradores.
 
 Chegou o momento de criarmos os nossos colaboradores.
 
 Todos os colaboradores da escola possuem 4 propriedades:
 
 - Nome
 - Matrícula
 - Salario
 - Cargo
 
 **[DESAFIO]** Como você organizaria essa estrutura?
 
 > Dica: Você pode tanto usar *struct* como *class* para isso.
 
 Não há certo ou errado quanto a escolha entre *struct* e *class*, mas eu recomendaria *struct* já que não estamos usando os recursos de uma *class* (herança, passagem por referência, etc.)
 
 Abaixo, segue um exemplo de como seria um *struct* para representar uma pessoa ✨.
 */

enum Profissao {
    case bombeiro, policial, medico, arquiteto, estudante, professor
}

struct Pessoa {
    let nome: String
    let CPF: String
    let profissao: Profissao
}

let joao = Pessoa(nome: "João", CPF: "123.456.789-10", profissao: .professor)

// Seu struct aqui!
struct Colaborador {
    let nome: String
    let matricula: String
    var salario: Double
    let cargo: String
}

let colaborador1 = Colaborador(nome: "Beltrano", matricula: "12345", salario: 3500.0, cargo: "Professor")
let colaborador2 = Colaborador(nome: "Ciclano", matricula: "54321", salario: 2200.0, cargo: "Secretário")



/*:
 Excelente!
 
 Agora que temos um *struct* para representar um colaborador, que tal colocarmos algumas funcionalidades para ele?
 
 Uma das demandas da escola é que o colaborador seja capaz de se apresentar, seguindo o seguinte modelo de frase:
 
 -> "Meu nome é **NOME**, sou **CARGO** e minha matrícula é **MATRÍCULA**"
 
 **[DESAFIO]** Como você organizaria essa estrutura com essa funcionalidade?
 
 Abaixo, segue um exemplo de como seria um *struct* para representar um turista que sabe se apresentar ✨.
 */

enum Nacionalidade {
    case canadense, brasileiro, portugues, espanhol, italiano
}

struct Turista {
    let nome: String
    let nacionalidade: Nacionalidade
    
    func bandeira() -> String {
        switch nacionalidade {
        case .canadense:
            return "🇨🇦"
        case .brasileiro:
            return "🇧🇷"
        case .portugues:
            return "🇵🇹"
        case .espanhol:
            return "🇪🇸"
        case .italiano:
            return "🇮🇹"
        }
    }
    
    func seApresentar() -> String {
        return "Meu nome é \(nome), e a bandeira da minha nacionalidade é \(bandeira())"
    }
}

let john = Turista(nome: "John", nacionalidade: .canadense)
john.seApresentar()

// Seu struct aqui!
struct Colaborador1 {
    let nome: String
    let cargo: String
    let matricula: String
    
    func seApresentar() -> String {
        return "Meu nome é \(nome), sou \(cargo) e minha matrícula é \(matricula)"
    }
}

let colaborador = Colaborador1(nome: "João", cargo: "professor", matricula: "12345")
print(colaborador.seApresentar())
/*:
Feito seu *struct* que sabe se apresentar, vamos seguir para a próxima etapa!

[Anterior: Cargos](@previous) | Página 4 de 5  |  [Na sequência: Sistemas](@next)
*/
