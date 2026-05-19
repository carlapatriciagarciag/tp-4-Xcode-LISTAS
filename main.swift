//
//  main.swift
//  Calculadora_1.4 LISTAS
//
//  Created by Carla Garcia on 25/04/2026.
//
import Foundation

var numeros: [Int] = [ ]
func ingresar(){
    let preguntar = ("si quieres dejar de colocar numeros, coloque basta")
    let basta = "basta"
    while true{
        var encontrado = false
        print(preguntar)
        let entrada = readLine()!
        if basta == entrada{
            break
        } else{
            if let numero = Int(entrada){
                if numero < 0{
                    print("error")
                }
                else{
                    if encontrado == false {
                        for i in numeros{
                            if i == numero{
                                encontrado = true
                                print("es repetido no se puede")
                            }
                        }
                        if !encontrado{
                            numeros.append(numero)
                            print(numeros)
                        }
                    }
                }
            }
        }
    }
}
   

func mayor(){
    //.isEmpty es true si no hay nada adentro
    if numeros.isEmpty {
        print("la lista esta vacia")
        return
    }
        var mayor = 0
        for i in numeros{
            if i > mayor{
                mayor = i
            }
        }
        print(mayor)
    }


func menor(){
    //.isEmpty es true si no hay nada adentro
    if numeros.isEmpty {
        print("la lista esta vacia")
        return
    }
    var menor = 0
    for i in numeros{
        if i < menor{
            menor = i
        }
    }
    print(menor)
}

func promedio(){
    //.isEmpty es true si no hay nada adentro
    if numeros.isEmpty {
        print("la lista esta vacia")
        return
    }
   var suma = 0
    for i in numeros{
     suma+=i
    }
    // .count es para ver cuantos elementos tiene la lista
    let promedioo = suma/numeros.count
    print(promedioo)
}

func menu(){
    while true{
        print("1: ingresar, 2: mayor, 3: menor, 4: promedio, 5: salir")
        let opcion = Int(readLine()!)
        
        switch opcion{
        case 1: ingresar()
        case 2: mayor()
        case 3:menor()
        case 4: promedio()
        case 5:
            numeros = []
            print("datos reiniciados")
            return
        default:
            print("invalido")
        }
    }
}

menu()

