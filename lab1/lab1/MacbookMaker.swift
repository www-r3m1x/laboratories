//
//  File.swift
//  lab1
//
//  Created by Владимир Нереуца on 05.12.2020.
//


import Foundation


class MacbookMaker: NotebookTemplate {
    
    func design() {
        print("Берем тачбар")
    }
    
    override func addCPU() {
        print("Добавляем фирменный мощный процессор М1")
    }
    
    override func takeBox() {
        design()
        super.takeBox()
    }
}
