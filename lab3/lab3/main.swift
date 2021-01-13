//
//  main.swift
//  lab3
//
//  Created by Владимир Нереуца on 05.12.2020.
//
// Инверсия управления
import Foundation

print("Programm started.")

let control = DefaultUserTransaction(dataStore: DataStore())

while true {
    let response = readLine()
    guard let result: [String] = response?.components(separatedBy: [" "]) else { continue }
    
    switch result[0] {
    case "add":
        guard result.count >= 3 else { continue }
        control.add(user: User(name: result[2], identifier: result[1]))
    case "show":
        control.show()
    case "delete":
        guard result.count >= 2 else { continue }
        control.delete(identifier: result[1])
    case "edit":
        guard result.count >= 3 else { continue }
        control.edit(user: User(name: result[2], identifier: result[1]))
    default:
        break
    }
}
    

