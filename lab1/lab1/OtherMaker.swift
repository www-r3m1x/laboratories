//
//  1.swift
//  lab1
//
//  Created by Владимир Нереуца on 05.12.2020.
//

import Foundation

class OtherMaker: NotebookTemplate {
    
    func addRam() {
        print("Добавляем низкокачественной оперативки.")
    }
    
    override func addCPU() {
        print("Суем внутрь отстающий Intel.")
    }
    
    override func assemble() {
        addRam()
        super.assemble()
    }
}
