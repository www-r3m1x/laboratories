//
//  main.swift
//  lab2
//
//  Created by Владимир Нереуца on 05.12.2020.
//
// Итератор и посетитель

import Foundation

let places = PlacesCollection()
places.append(Bar())
places.append(Restaurant())
places.append(ShowRoom())

Client.clientCode(sequence: places)























