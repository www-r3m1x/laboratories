//
//  ShowRoom.swift
//  lab2
//
//  Created by Владимир Нереуца on 06.12.2020.
//

import Foundation

class ShowRoom: Place {

    func accept(_ visitor: Visitor) {
        visitor.visitConcreteComponentA(element: self)
    }
    
    func exclusiveMethodOfShowRoom() -> String {
        return "ShowRoom"
    }
}
