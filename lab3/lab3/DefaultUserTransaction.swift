//
//  Forge.swift
//  lab3
//
//  Created by Владимир Нереуца on 05.12.2020.
//

import Foundation

final class DefaultUserTransaction: UserTransactionProtocol {
    private let dataStore: DataStoreProtocol
    
    init(dataStore: DataStoreProtocol) {
        self.dataStore = dataStore
    }
    
    func add(user: User) {
        dataStore.insert(user)
    }
    
    func edit(user: User) {
        dataStore.update(user)
    }
    
    func delete(identifier: String) {
        dataStore.delete(identifier: identifier)
    }
    
    func show() {
        dataStore.show()
    }
}








