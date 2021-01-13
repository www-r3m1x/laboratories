//
//  Director.swift
//  lab4
//
//  Created by Владимир Нереуца on 05.12.2020.
//

import Foundation

class Director {
    private var builder: Builder? = nil
    
    func getBuilder() -> Builder? {
        return self.builder
    }
    
    func setBuilder(builder: Builder) {
        self.builder = builder
    }
    
    func build_full_model() {
        builder?.produceBody()
        builder?.produceWheels()
        builder?.produceEngine()
    }
}

