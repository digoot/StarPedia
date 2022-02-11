//
//  People.swift
//  SWApp
//
//  Created by Diego Otero Mata on 10/2/22.
//

import Foundation

struct People {
    let id: Int
    let name: String
    let birth: String
    let gender: Gender
    let height: Int
    let mass: Int
    let planet: Int
    let films: [Int]
    let species: [Int]
    let starships: [Int]
    let vehicles: [Int]

    enum Gender {
        case male
        case female
        case unknown
        case noInfo
    }
}
