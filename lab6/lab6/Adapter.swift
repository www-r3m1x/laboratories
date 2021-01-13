//
//  Adapter.swift
//  lab6
//
//  Created by Владимир Нереуца on 06.12.2020.
//

import Foundation

class Adapter: BasePlace {
    private var adapting: Metro
    
    init(_ adapting: Metro) {
        self.adapting = adapting
    }

    func enteredUnderground() {
        mediator?.notify(sender: self, event: adapting.enteredUnderground())
    }
    
    func putOnMask() {
        mediator?.notify(sender: self, event: adapting.putOnMask())
    }
}
