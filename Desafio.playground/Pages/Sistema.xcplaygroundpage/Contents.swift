/*:
 ## Sistema.
 
 Agora que você passou por todas as etapas do treinamento, é hora de juntar todas as peças do quebra-cabeça! 🧩
 
 Você já sabe sobre:
 
 - Array (Vetores)
 - Enum
 - Switch
 - Struct/Class
 
 Com esses conhecimentos, você tem o suficiente para montar um sistema para uma escola.
 
 Antes de começarmos, é importante você saber algumas exigências das escolas.
 
 Elas devem ser capazes de:
 
 1. Cadastrar novos colaboradores.
 2. Remover colabores através de sua matrícula.
 -
 3. Listar gastos mensais com todos os colaboradores.
 4. Listar gastos mensais por cargo (quanto é gasto com monitor, quanto é gasto com professor, etc.)
 5. Listar quantas pessoas existem por cargo (quantos monitores, quantos professores, etc.)
 6. Listar os nomes de todos os colaboradores em ordem alfabética.
 
 **[DESAFIO]** Como você faria esse sistema?
 
 Abaixo, segue um exemplo de como seria um sistema similar ao do colégio 🐶.
 */

enum Raca {
    case poodle
    case husky
    case golden
    case labrador
    case caramelo
    
    // Sim! Em Swift, Enum pode conter funções! ❤️
    func nomeFormal() -> String {
        switch self {
        case .poodle:
            return "Poodle"
        case .husky:
            return "Husky Siberiano"
        case .golden:
            return "Golden Retriever"
        case .labrador:
            return "Labrador"
        case .caramelo:
            return "Caramelo"
        }
    }
    
    func possuiMuitoPelo() -> Bool {
        switch self {
        case .poodle, .husky, .golden:
            return true
        case .labrador, .caramelo:
            return false
        }
    }
}

struct Cachorro {
    let identificador: Int
    let nome: String
    let raca: Raca
    let gastoMensal: Double
    
    func descricao() -> String {
        return "Identificador: \(identificador): \(nome) é um cachorro da raça \(raca.nomeFormal()) que possui um gasto mensal de R$\(gastoMensal)."
    }
}

// A class Abrigo é o nosso sistema!
class Abrigo {
    var cachorros: [Cachorro]
    
    init(cachorros: [Cachorro]) {
        self.cachorros = cachorros
    }
    
    // Funcionalidade 1 do sistema da escola
    // Cadastrar novos colaboradores
    func adicionaCachorro(_ cachorro: Cachorro) {
        cachorros.append(cachorro)
    }
    
    // Funcionalidade 2 do sistema da escola
    // Remover colabores através de sua matrícula
    func removeCachorro(comIdentificador identificador: Int) {
        // Solução 1
        // Dificuldade: 🔥
        // Podemos melhorar essa solução...
        for indice in 0..<cachorros.count {
            let cachorro = cachorros[indice]
            if cachorro.identificador == identificador {
                cachorros.remove(at: indice)
            }
        }
        
        // Solução 2
        // Dificuldade: 🔥🔥
        // Já está bom o suficiente
        for (indice, cachorro) in cachorros.enumerated() {
            if cachorro.identificador == identificador {
                cachorros.remove(at: indice)
            }
        }
        
        // Solução 3
        // Dificuldade: 🔥🔥🔥
        // Solução um pouco mais "avançada"
        cachorros.removeAll { (cachorro) -> Bool in
            cachorro.identificador == identificador
        }
        
        // Solução 4
        // Dificuldade: 🔥🔥🔥🔥
        // Agora você decolou!!! 🚀
        cachorros.removeAll{ $0.identificador == identificador }
    }
    
    // Funcionalidade 3 do sistema da escola
    // Listar gastos mensais com todos os colaboradores
    func listaGastoMensais() -> Double {
        var gastoTotal: Double = 0
        
        for cachorro in cachorros {
            // Solução 1
            // Dificuldade: 🔥
            let gastoMensal = cachorro.gastoMensal
            gastoTotal = gastoTotal + gastoMensal
            
            // Solução 2
            // Dificuldade: 🔥🔥
            // let gastoMensal = cachorro.gastoMensal
            // gastoTotal += gastoMensal
            
            // Solução 3
            // Dificuldade: 🔥🔥🔥
            // gastoTotal += cachorro.gastoMensal
        }
        
        return gastoTotal
    }
    
    // Funcionalidade 4 do sistema da escola
    // Listar gastos mensais por cargo
    func listaGasto(daRaca raca: Raca) -> String {
        var gastoTotal: Double = 0
        
        // Solução 1
        // Dificuldade: 🔥
        for cachorro in cachorros {
            if cachorro.raca == raca {
                gastoTotal += cachorro.gastoMensal
            }
        }
        
        // Solução 2
        // Dificuldade: 🔥🔥
        // for cachorro in cachorros where cachorro.raca == raca {
        //     gastoTotal += cachorro.gastoMensal
        // }
        
        // Solução 3
        // Dificuldade: 🔥🔥🔥🔥🔥🔥🔥🔥🔥
        // gastoTotal = cachorros.map{ $0.gastoMensal }.reduce(0, +)
        
        return "Os gastos com a raça \(raca.nomeFormal()) são de R$\(gastoTotal)."
    }
    
    // Funcionalidade 5 do sistema da escola
    // Listar quantas pessoas existem por cargo
    func listaQuantidadeDeCachorro(daRaca raca: Raca) -> String {
        var quantidadeDeCachorro = 0
        
        // Solução 1
        // Dificuldade: 🔥
        for cachorro in cachorros {
            if cachorro.raca == raca {
                quantidadeDeCachorro += 1
            }
        }
        
        // Solução 2
        // Dificuldade: 🔥🔥
        // for cachorro in cachorros where cachorro.raca == raca {
        //     quantidadeDeCachorro += 1
        // }
        
        // Solução 3
        // Dificuldade: 🔥🔥🔥🔥🔥🔥
        // quantidadeDeCachorro = cachorros.filter{ $0.raca == raca }.count
        
        return "Existe(m) \(quantidadeDeCachorro) cachorro(s) da raça \(raca.nomeFormal())."
    }
    
    // Funcionalidade 6 do sistema da escola
    // Listar os nomes de todos os colaboradores em ordem alfabética
    func listaCachorrosEmOrdemAlfabetica() -> [String] {
        // Primeiro, precisamos pegar todos os nomes de todos os cachorros
        var nomes: [String] = []
        
        // Solução 1
        // Dificuldade: 🔥
        for cachorro in cachorros {
            let cachorroNome = cachorro.nome
            nomes.append(cachorroNome)
        }
        
        // Solução 2
        // Dificuldade: 🔥🔥
        // nomes = cachorros.map{ $0.nome }
        
        // Agora é só ordenar a nossa lista de nomes!
        // Obrigado Swift por já ter uma função para isso 🙏
        nomes.sort()
        
        // Solução 3
        // Dificuldade: 🔥🔥🔥
        // Essa solução já faz tudo
        // .map -> cria um Array de String
        // .sorted() -> ordena o Array
        // nomes = cachorros.map{ $0.nome }.sorted()
        
        return nomes
    }
}

let muitosCachorros: [Cachorro] =
    [
        Cachorro(identificador: 0, nome: "Rex", raca: .caramelo, gastoMensal: 100),
        Cachorro(identificador: 1, nome: "Bob", raca: .labrador, gastoMensal: 50),
        Cachorro(identificador: 2, nome: "Fred", raca: .golden, gastoMensal: 200),
        Cachorro(identificador: 3, nome: "Zeus", raca: .caramelo, gastoMensal: 500),
        Cachorro(identificador: 4, nome: "Babi", raca: .poodle, gastoMensal: 3000),
        Cachorro(identificador: 5, nome: "Xerox", raca: .labrador, gastoMensal: 1500),
        Cachorro(identificador: 6, nome: "Slinky", raca: .poodle, gastoMensal: 2500),
        Cachorro(identificador: 7, nome: "Fancy", raca: .labrador, gastoMensal: 1000),
        Cachorro(identificador: 8, nome: "Britney", raca: .caramelo, gastoMensal: 30),
        Cachorro(identificador: 9, nome: "Panqueca", raca: .golden, gastoMensal: 450),
        Cachorro(identificador: 10, nome: "Tiziu", raca: .golden, gastoMensal: 900),
        Cachorro(identificador: 11, nome: "Simba", raca: .husky, gastoMensal: 700),
        Cachorro(identificador: 12, nome: "Thor", raca: .labrador, gastoMensal: 1300),
        Cachorro(identificador: 13, nome: "Kawaii", raca: .caramelo, gastoMensal: 1200)
    ]

let abrigo = Abrigo(cachorros: muitosCachorros)

// Funcionalidade 1
print(abrigo.listaCachorrosEmOrdemAlfabetica())

let avin = Cachorro(identificador: 14, nome: "Avin", raca: .caramelo, gastoMensal: 300)
abrigo.adicionaCachorro(avin)

print(abrigo.listaCachorrosEmOrdemAlfabetica())
// Você consegue ver que "Avin" agora aparece dentro do print?
// Isso acontece pois o cachorro foi adicionado com sucesso ao abrigo!

// Funcionalidade 2

print(abrigo.listaCachorrosEmOrdemAlfabetica())

abrigo.removeCachorro(comIdentificador: 14)

print(abrigo.listaCachorrosEmOrdemAlfabetica())
// Você consegue ver que "Avin" não aparece mais no print?
// Isso acontece pois o cachorro Rex de identificador 0 foi removido com sucesso do abrigo!

// Funcionalidade 3
print(abrigo.listaGastoMensais())

// Funcionalidade 4
print(abrigo.listaGasto(daRaca: .caramelo))
print(abrigo.listaGasto(daRaca: .poodle))
print(abrigo.listaGasto(daRaca: .husky))
print(abrigo.listaGasto(daRaca: .labrador))
print(abrigo.listaGasto(daRaca: .golden))

// Funcionalidade 5
print(abrigo.listaQuantidadeDeCachorro(daRaca: .caramelo))
print(abrigo.listaQuantidadeDeCachorro(daRaca: .poodle))
print(abrigo.listaQuantidadeDeCachorro(daRaca: .husky))
print(abrigo.listaQuantidadeDeCachorro(daRaca: .labrador))
print(abrigo.listaQuantidadeDeCachorro(daRaca: .golden))

// Funcionalidade 6
print(abrigo.listaCachorrosEmOrdemAlfabetica())





// Seu sistema aqui!
enum Cargo {
    case monitor
    case professor
    case administrativo
    
    func nomeFormal() -> String {
        switch self {
        case .monitor:
            return "Monitor"
        case .professor:
            return "Professor"
        case .administrativo:
            return "Administrativo"
        }
    }
}

struct Colaborador {
    let matricula: Int
    let nome: String
    let cargo: Cargo
    let salarioMensal: Double
    
    func descricao() -> String {
        return "Matrícula: \(matricula): \(nome) é um \(cargo.nomeFormal()) que recebe um salário mensal de R$\(salarioMensal)."
    }
}

class Escola {
    var colaboradores: [Colaborador]
    
    init(colaboradores: [Colaborador]) {
        self.colaboradores = colaboradores
    }
    
    func adicionaColaborador(_ colaborador: Colaborador) {
        colaboradores.append(colaborador)
    }
    
    func removeColaborador(comMatricula matricula: Int) {
        colaboradores.removeAll { $0.matricula == matricula }
    }
    
    func listaGastosMensais() -> Double {
        return colaboradores.reduce(0) { $0 + $1.salarioMensal }
    }
    
    func listaGastosPorCargo(_ cargo: Cargo) -> String {
        let gastoTotal = colaboradores.filter { $0.cargo == cargo }.reduce(0) { $0 + $1.salarioMensal }
        return "Os gastos com o cargo \(cargo.nomeFormal()) são de R$\(gastoTotal)."
    }
    
    func listaQuantidadePorCargo(_ cargo: Cargo) -> String {
        let quantidade = colaboradores.filter { $0.cargo == cargo }.count
        return "Existem \(quantidade) colaborador(es) do cargo \(cargo.nomeFormal())."
    }
    
    func listaColaboradoresEmOrdemAlfabetica() -> [String] {
        return colaboradores.map { $0.nome }.sorted()
    }
}

let colaboradores: [Colaborador] = [
    Colaborador(matricula: 0, nome: "João", cargo: .monitor, salarioMensal: 2000),
    Colaborador(matricula: 1, nome: "Maria", cargo: .professor, salarioMensal: 3000),
    Colaborador(matricula: 2, nome: "Pedro", cargo: .administrativo, salarioMensal: 2500),
    Colaborador(matricula: 3, nome: "Ana", cargo: .professor, salarioMensal: 3500)
]

let escola = Escola(colaboradores: colaboradores)

escola.adicionaColaborador(Colaborador(matricula: 4, nome: "Carlos", cargo: .monitor, salarioMensal: 1800))
print(escola.listaColaboradoresEmOrdemAlfabetica())

escola.removeColaborador(comMatricula: 1)
print(escola.listaColaboradoresEmOrdemAlfabetica())
print(escola.listaGastosMensais())
print(escola.listaGastosPorCargo(.professor))
print(escola.listaQuantidadePorCargo(.monitor))
print(escola.listaColaboradoresEmOrdemAlfabetica())

/*:
 
Esse foi um desafio um tanto quanto longo.
 
 Porém, o sistema da escola não é tão "simples" assim.
 
 Ele possui algumas regras que precisam ser seguidas.
 
 São elas:
 
 - O SALÁRIO pode conter qualquer valor, mas o maior salário deve ser sempre o do DIRETOR.

 - A ESCOLA não pode ter mais do que um DIRETOR.

 - A ESCOLA não pode ter mais COORDENADORES do que PROFESSORES.

**[DESAFIO]** Como você faria acrescentaria essas regras ao seu sistema?
 
 Dessa vez, eu não darei dicas de solução 😉.
 
*/

// Pode incrementar essas regras no seu sistema desenvolvido acima.
// Número 1 foi adicionado em alguns nomes para evitar conflito de redeclaração com o desafio anterior.
class Escola1 {
    var funcionarios = [Funcionario]()
    
    func adicionarFuncionario(_ funcionario: Funcionario) {
        funcionarios.append(funcionario)
    }
    
    func obterDiretor() -> Diretor? {
        return funcionarios.compactMap { $0 as? Diretor }.first
    }
    
    func obterCoordenadores() -> [Coordenador] {
        return funcionarios.compactMap { $0 as? Coordenador }
    }
    
    func obterProfessores() -> [Professor] {
        return funcionarios.compactMap { $0 as? Professor }
    }
}

class Funcionario {
    var nome: String
    var salario: Double
    
    init(nome: String, salario: Double) {
        self.nome = nome
        self.salario = salario
    }
}

class Diretor: Funcionario {}

class Coordenador: Funcionario {}

class Professor: Funcionario {}

// Exemplo de uso:
let escola1 = Escola1()

let diretor = Diretor(nome: "João", salario: 10000)
let coordenador = Coordenador(nome: "Maria", salario: 8000)
let professor1 = Professor(nome: "Pedro", salario: 5000)
let professor2 = Professor(nome: "Ana", salario: 6000)

escola1.adicionarFuncionario(diretor)
escola1.adicionarFuncionario(coordenador)
escola1.adicionarFuncionario(professor1)
escola1.adicionarFuncionario(professor2)

// Agora você pode implementar lógica adicional para garantir que as regras sejam seguidas ao adicionar funcionários à escola.
// Alteração no nome Escola para Escola2 apenas para cumprir tal desafio e não ter problemas com redeclaração com os outros desafios acima.
class Escola2 {
    var funcionarios = [Funcionario]()
    
    func adicionarFuncionario(_ funcionario: Funcionario) {
        if funcionario is Diretor && obterDiretor() != nil {
            print("Já existe um diretor na escola. Não é possível adicionar outro.")
            return
        }
        
        if funcionario is Coordenador || funcionario is Professor {
            if obterDiretor() == nil {
                print("Um diretor deve ser adicionado antes de coordenadores ou professores.")
                return
            }
        }
        
        funcionarios.append(funcionario)
    }
    
    func obterDiretor() -> Diretor? {
        return funcionarios.compactMap { $0 as? Diretor }.first
    }
    
    func obterCoordenadores() -> [Coordenador] {
        return funcionarios.compactMap { $0 as? Coordenador }
    }
    
    func obterProfessores() -> [Professor] {
        return funcionarios.compactMap { $0 as? Professor }
    }
}



/*:
Parabéns! Você concluiu o módulo de treinamento da prefeitura da cidade de Cornville 🎉!
*/
