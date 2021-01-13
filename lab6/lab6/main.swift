//
//  main.swift
//  lab6
//
//  Created by Владимир Нереуца on 06.12.2020.
//
// Адаптер + посредник
import Foundation

let place1 = University()
let place2 = Metro()
let adapter = Adapter(place2)

let mediator = PlacesMediator(place1, adapter)
place1.enteredUniversity()
adapter.enteredUnderground()

