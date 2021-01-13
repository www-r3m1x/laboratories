//
//  UserTransactionProtocol.swift
//  lab3
//
//  Created by Владимир Нереуца on 05.12.2020.
//

import Foundation

protocol UserTransactionProtocol {
    func add(user: User)
    func edit(user: User)
    func delete(identifier: String)
    func show()
}
