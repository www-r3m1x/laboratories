//
//  ConcreteVisitor.swift
//  lab2
//
//  Created by Владимир Нереуца on 06.12.2020.
//

import Foundation


class ConcreteVisitor: Visitor {
    func visitConcreteComponentA(element: ShowRoom) {
        print(element.exclusiveMethodOfShowRoom() + " visited\n")
    }

    func visitConcreteComponentB(element: Bar) {
        print(element.specialMethodOfBar() + " visited\n")
    }
    
    func visitConcreteComponentC(element: Restaurant) {
        print(element.specialMethodOfRestaurant() + " visited\n")
    }
}
