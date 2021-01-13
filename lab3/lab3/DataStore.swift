//
//  DataStore.swift
//  lab3
//
//  Created by Владимир Нереуца on 05.12.2020.
//

import Foundation

final class DataStore: DataStoreProtocol {
    private var storage: [String:String] = [:]
    
    func insert<T>(_ data: T) where T : StorableProtocol {
        if let identifier = (data as? User)?.identifier, let name = (data as? User)?.name {
            storage[identifier] = name
        }
    }
    
    func update<T>(_ data: T) where T : StorableProtocol {
        if let identifier = (data as? User)?.identifier, let name = (data as? User)?.name {
            let keyExists = storage[identifier] != nil
            if keyExists {
                storage.updateValue(name, forKey: identifier)
            }
        }
    }
    
    func delete(identifier: String) {
        storage.removeValue(forKey: identifier)
    }
    
    func show() {
        print(storage)
    }
}
