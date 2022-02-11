//
//  PlanetsCodable.swift
//  SWApp
//
//  Created by Diego Otero Mata on 10/2/22.
//

import Foundation

struct PlanetsCodable: Codable, Equatable {
    let url: URL
    let name: String
    let diameter: String
    let ratationPeriod: String
    let orbitalPeriod: String
    let gravity: String
    let population: String
    let climate: String
    let terrain: String
    let surfaceWater: String
    let residents: [URL]
    let films: [URL]

    enum CodingKeys: String, CodingKey {
        case url, name, diameter, gravity, population, climate, terrain, residents, films
        case ratationPeriod = "rotation_period"
        case orbitalPeriod = "orbital_period"
        case surfaceWater = "surface_water"
    }
}
