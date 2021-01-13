//
//  Builder.swift
//  lab4
//
//  Created by Владимир Нереуца on 05.12.2020.
//

import Foundation

protocol Builder {
    func product() -> Model
    func produceWheels()
    func produceEngine()
    func produceBody()
}
