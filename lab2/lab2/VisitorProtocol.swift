//
//  VisitorProtocol.swift
//  lab2
//
//  Created by Владимир Нереуца on 06.12.2020.
//

import Foundation

protocol Visitor {
    func visitConcreteComponentA(element: ShowRoom)
    func visitConcreteComponentB(element: Bar)
    func visitConcreteComponentC(element: Restaurant)
}
