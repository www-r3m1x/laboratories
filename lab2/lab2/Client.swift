//
//  Client.swift
//  lab2
//
//  Created by Владимир Нереуца on 06.12.2020.
//

import Foundation

class Client {
    static func clientCode<S: Sequence>(sequence: S) {
        let visitor = ConcreteVisitor()
        for item in sequence {
            (item as? Place)?.accept(visitor)
        }
    }
}
