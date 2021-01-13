//
//  PlacesMediator.swift
//  lab6
//
//  Created by Владимир Нереуца on 06.12.2020.
//

import Foundation

class PlacesMediator: MediatorProtocol {

    private var place1: University
    private var place2: Adapter

    init(_ component1: University, _ component2: Adapter) {
        self.place1 = component1
        self.place2 = component2

        self.place1.update(mediator: self)
        self.place2.update(mediator: self)
    }

    func notify(sender: BasePlace, event: String) {
        if event == "underground" {
            print("Посредник отреагировал на вход в метро и: ")
            self.place2.putOnMask()
            self.place1.putOnGloves()
        }
        else if (event == "university") {
            print("Посредник отреагировал на вход в университет и: ")
            self.place2.putOnMask()
        }
    }
}
