//
//  BasePlace.swift
//  lab6
//
//  Created by Владимир Нереуца on 06.12.2020.
//

import Foundation

class BasePlace {
    weak var mediator: MediatorProtocol?

    init(mediator: MediatorProtocol? = nil) {
        self.mediator = mediator
    }

    func update(mediator: MediatorProtocol) {
        self.mediator = mediator
    }
}
