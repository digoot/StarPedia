//
//  SpeciesCodable.swift
//  SWApp
//
//  Created by Diego Otero Mata on 10/2/22.
//

import Foundation

struct SpeciesCodable: Codable, Equatable {
    let url: URL
    let name: String
    let classification: String
    let designation: String
    let averageHeight: String
    let lifespan: String
    let eyeColors: String
    let hairColors: String
    let skinColors: String
    let language: String
    let planet: String
    let people: [URL]
    let films: [URL]

    enum CodingKeys: String, CodingKey {
        case url, name, classification, designation, language, people, films
        case averageHeight = "average_height"
        case lifespan = "average_lifespan"
        case eyeColors = "eye_colors"
        case hairColors = "hair_colors"
        case skinColors = "skin_colors"
        case planet = "homeworld"
    }
}
