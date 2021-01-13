//
//  ConcreteBuilder1.swift
//  lab4
//
//  Created by Владимир Нереуца on 05.12.2020.
//

import Foundation

class ConcreteBuilder1: Builder {
    private var property = Model()
    
    func reset() {
        property = Model()
    }
    
    func product() -> Model {
        return property
    }

    
    func produceWheels() {
        property.add(part: "Добавлены колеса")
    }
    
    func produceEngine() {
        property.add(part: "Добавлен двигатель")
    }
    
    func produceBody() {
        property.add(part: "Добавлен кузов")
    }
    
}
