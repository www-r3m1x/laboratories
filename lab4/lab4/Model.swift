//
//  Model.swift
//  lab4
//
//  Created by Владимир Нереуца on 05.12.2020.
//

import Foundation

class Model {
    
    private var parts: [String] = []
    
    func add(part: String) {
        parts.append(part)
    }
    
    func list_parts() {
        print("Cделано: \(parts)")
    }
}

