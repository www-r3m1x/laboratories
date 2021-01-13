//
//  Bar.swift
//  lab2
//
//  Created by Владимир Нереуца on 06.12.2020.
//

import Foundation

class Bar: Place {
    func accept(_ visitor: Visitor) {
        visitor.visitConcreteComponentB(element: self)
    }

    func specialMethodOfBar() -> String {
        return "Bar"
    }
}
