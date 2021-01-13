//
//  main.swift
//  lab4
//
//  Created by Владимир Нереуца on 05.12.2020.
//
// Абстрактная фабрика и строитель
import Foundation

func client_code(factory: AbstractFactory) {
    _ = factory.create_model()
}
    
client_code(factory: FerrariCar())
client_code(factory: LamboCar())

