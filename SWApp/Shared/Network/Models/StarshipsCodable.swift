//
//  StarshipsCodable.swift
//  SWApp
//
//  Created by Diego Otero Mata on 10/2/22.
//

import Foundation

struct StarshipsCodable: Codable, Equatable {
    let url: URL
    let name: String
    let model: String
    let starshipClass: String
    let manufacturer: String
    let cost: String
    let length: String
    let crew: String
    let passengers: String
    let maxAtmSpeed: String
    let hyperdrive: String
    let mglt: String
    let cargo: String
    let consumables: String
    let films: [URL]
    let pilots: [URL]

    enum CodingKeys: String, CodingKey {
        case url, name, model, manufacturer, length, crew, passengers, consumables, films, pilots
        case starshipClass = "starship_class"
        case cost = "cost_in_credits"
        case maxAtmSpeed = "max_atmosphering_speed"
        case hyperdrive = "hyperdrive_rating"
        case mglt = "MGLT"
        case cargo = "cargo_capacity"
    }
}
