//
//  DataStoreProtocol.swift
//  lab3
//
//  Created by Владимир Нереуца on 05.12.2020.
//

import Foundation

protocol DataStoreProtocol {
    func insert<T>(_ data: T) where T: StorableProtocol
    func update<T>(_ data: T)  where T: StorableProtocol
    func delete(identifier: String)
    func show()
}
