//
//  VehiclesCodable.swift
//  SWApp
//
//  Created by Diego Otero Mata on 10/2/22.
//

import Foundation

struct VehiclesCodable: Codable, Equatable {
    let url: URL
    let name: String
    let model: String
    let vehicleClass: String
    let manufacturer: String
    let length: String
    let cost: String
    let crew: String
    let passengers: String
    let maxAtmSpeed: String
    let cargo: String
    let consumables: String
    let films: [URL]
    let pilots: [URL]

    enum CodingKeys: String, CodingKey {
        case url, name, model, manufacturer, length, crew, passengers, consumables, films, pilots
        case vehicleClass = "vehicle_class"
        case cost = "cost_in_credits"
        case maxAtmSpeed = "max_atmosphering_speed"
        case cargo = "cargo_capacity"
    }
}
