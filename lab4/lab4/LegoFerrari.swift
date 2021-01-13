//
//  FerrariProduct.swift
//  lab4
//
//  Created by Владимир Нереуца on 05.12.2020.
//

import Foundation

class LegoFerrari: AbstractCar {
    static func useful_function() {
        let director = Director()
        let builder = ConcreteBuilder1()
        director.setBuilder(builder: builder)

        print("Сборка лего феррари")
        director.build_full_model()
        builder.product().list_parts()

        builder.produceWheels()
        builder.produceEngine()
        builder.produceBody()

        print("Лего феррари готова\n")
    }
    
    
}

        
