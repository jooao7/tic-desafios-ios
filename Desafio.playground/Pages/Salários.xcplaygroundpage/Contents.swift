/*:
## Salários.
 
 Uma parte muito importante do sistema que irá gerenciar as escolas municipais é a parte que controla os salários.
 
 Você precisa ser capaz de realizar um somatório de salários.
 
 **[DESAFIO]** Como você realizaria o somatório abaixo?
 */

let primeiroSalario = 1000
let segundoSalario  = 2000
let terceiroSalario = 3000
let quartoSalario   = 2500

//let somatorio = ???
let somatorio = primeiroSalario + segundoSalario + terceiroSalario + quartoSalario
print("O somatório dos salários é: \(somatorio)")
// A resposta esperada do somatório é 8500!

/*:

 Ótimo! Você aprendeu a realizar a soma através das variáveis!
 
 Porém, somar variáveis é um caso pouco provável de acontecer em um sistema com vários salários.
 
 É mais provável que você tenha acesso a uma lista (Array) de salários.
 
 **[DESAFIO]** Sendo assim, como você realizaria os somatórios abaixo?
 
 > Dica: Você pode usar um *for* para isso.
 */

// Somatório = 8500
let salarios1 = [1000, 2000, 3000, 2500]
// Seu somatório aqui!
let somatorio1 = salarios1.reduce(0, +)

// Somatório = 5010
let salarios2 = [3000, 1500, 500, 10]
// Seu somatório aqui!
let somatorio2 = salarios2.reduce(0, +)

// Somatório = 55500
let salarios3 = [8500, 10000, 13000, 24000]
// Seu somatório aqui!
let somatorio3 = salarios3.reduce(0, +)

// Somatório = 2500
let salarios4 = [2500]
// Seu somatório aqui!
let somatorio4 = salarios4.reduce(0, +)

// Somatório 71670
let salarios5 = [1000, 200, 6000, 70, 4000, 100, 40000, 8000, 10000, 2300]
// Seu somatório aqui!
let somatorio5 = salarios5.reduce(0, +)

print("Somatório 1: \(somatorio1)")
print("Somatório 2: \(somatorio2)")
print("Somatório 3: \(somatorio3)")
print("Somatório 4: \(somatorio4)")
print("Somatório 5: \(somatorio5)")
/*:
Legal, mas... ninguém quer ficar repetindo todas essas linhas de código para realizar um somatório, não é mesmo?
 
 Que tal a gente transformar isso em uma *function*?
 
 **[DESAFIO]** Transformar o somatório em uma *function*!
 
 > Dica:
 >
 > Talvez você tenha algo como *func somatorioDeSalarios(salarios: [Double]) -> Double*.

*/

// Sua função aqui!
// Você pode usar as variáveis declaradas anteriormente para testar!
func somaDosSalarios(salarios: [Double]) -> Double {
    return salarios.reduce(0, +)
}

let salarios01: [Double] = [1000, 2000, 3000, 2500]
let salarios02: [Double] = [3000, 1500, 500, 10]
let salarios03: [Double] = [8500, 10000, 13000, 24000]
let salarios04: [Double] = [2500]
let salarios05: [Double] = [1000, 200, 6000, 70, 4000, 100, 40000, 8000, 10000, 2300]

print("Somatório 1: \(somaDosSalarios(salarios: salarios01))")
print("Somatório 2: \(somaDosSalarios(salarios: salarios02))")
print("Somatório 3: \(somaDosSalarios(salarios: salarios03))")
print("Somatório 4: \(somaDosSalarios(salarios: salarios04))")
print("Somatório 5: \(somaDosSalarios(salarios: salarios05))")

/*:
 Feito todos esses somatórios, é hora de avançarmos para a próxima lição!
 
 [Anterior: Introdução](@previous) | Página 2 de 5  |  [Na sequência: Cargos](@next)
 */
