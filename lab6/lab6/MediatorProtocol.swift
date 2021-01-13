//
//  MediatorProtocol.swift
//  lab6
//
//  Created by Владимир Нереуца on 06.12.2020.
//

import Foundation

protocol MediatorProtocol: AnyObject {
    func notify(sender: BasePlace, event: String)
}
