//
//  PlacesCollection.swift
//  lab2
//
//  Created by Владимир Нереуца on 06.12.2020.
//

import Foundation

class PlacesCollection {

    fileprivate lazy var places = [Place]()

    func append(_ item: Place) {
        self.places.append(item)
    }
}

extension PlacesCollection: Sequence {

    func makeIterator() -> PlacesIterator {
        return PlacesIterator(self)
    }
}

class PlacesIterator: IteratorProtocol {

    private let collection: PlacesCollection
    private var index = 0

    init(_ collection: PlacesCollection) {
        self.collection = collection
    }

    func next() -> Place? {
        defer { index += 1 }
        return index < collection.places.count ? collection.places[index] : nil
    }
}
