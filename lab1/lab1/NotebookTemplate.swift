//
//  11.swift
//  lab1
//
//  Created by Владимир Нереуца on 05.12.2020.
//

import Foundation

class NotebookTemplate {

    func takeBox() {
        print("Берем упаковку")
    }
    
    func takeCamera() {
        print("Берем клавиатуру")
    }

    func takeMicrophone() {
        print("Берем экран")
    }

    func assemble() {
        print("Собираем все вместе")
    }
    
    func addCPU() {}
    
    func makeNotebook() {
        takeBox()
        takeCamera()
        takeMicrophone()
        addCPU()
        assemble()
    }
}
