//
//  Restaurant.swift
//  lab2
//
//  Created by Владимир Нереуца on 06.12.2020.
//

import Foundation

class Restaurant: Place {
    func accept(_ visitor: Visitor) {
        visitor.visitConcreteComponentC(element: self)
    }

    func specialMethodOfRestaurant() -> String {
        return "Restaurant"
    }
}
