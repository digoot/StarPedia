//
//  PeopleCodable.swift
//  SWApp
//
//  Created by Diego Otero Mata on 10/2/22.
//

import Foundation

struct PeopleCodable: Codable, Equatable {
    let url: URL
    let name: String
    let birth: String
    let eyeColor: String
    let gender: Gender
    let hairColor: String
    let height: String
    let mass: String
    let skinColor: String
    let planet: URL
    let films: [URL]
    let species: [URL]
    let starships: [URL]
    let vehicles: [URL]

    enum Gender: String, Codable, Equatable {
        case male = "Male"
        case female = "Female"
        case unknown = "unknown"
        case notApplicable = "n/a"
    }

    enum CodingKeys: String, CodingKey {
        case url, name, gender, height, mass, films, species, starships, vehicles
        case birth = "birth_year"
        case eyeColor = "eye_color"
        case hairColor = "hair_color"
        case skinColor = "skin_color"
        case planet = "homeworld"
    }
}
