//
//  PageableCodable.swift
//  SWApp
//
//  Created by Diego Otero Mata on 11/2/22.
//

import Foundation

struct PageableCodable<T: Codable>: Codable, Equatable {
    static func == (lhs: PageableCodable<T>, rhs: PageableCodable<T>) -> Bool {
        return lhs.count == rhs.count &&
            lhs.previous == rhs.previous &&
            lhs.next == rhs.next
    }

    let count: Int
    let next: URL?
    let previous: URL?
    let results: [T]

    enum CodingKeys: String, CodingKey {
        case count, next, previous, results
    }
}
