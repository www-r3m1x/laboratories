//
//  University.swift
//  lab6
//
//  Created by Владимир Нереуца on 06.12.2020.
//

import Foundation

class University: BasePlace {
    func enteredUniversity() {
        print("\nВошли в университет.")
        mediator?.notify(sender: self, event: "university")
    }

    func putOnGloves() {
        print("Надели перчатки.")
        mediator?.notify(sender: self, event: "gloves")
    }
}
