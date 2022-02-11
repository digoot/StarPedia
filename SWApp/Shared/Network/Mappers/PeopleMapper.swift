//
//  PeopleMapper.swift
//  SWApp
//
//  Created by Diego Otero Mata on 10/2/22.
//

import Foundation

final class PeopleMapper {
    static func map(_ result: PeopleCodable) -> People {
        return People(id: mapId(result.url),
                      name: result.name,
                      birth: result.birth,
                      gender: mapGender(result.gender),
                      height: mapHeight(result.height),
                      mass: mapMass(result.mass),
                      planet: result.planet.extractId(),
                      films: mapIds(result.films),
                      species: mapIds(result.species),
                      starships: mapIds(result.starships),
                      vehicles: mapIds(result.vehicles))
    }
}

private extension PeopleMapper {
    static func mapId(_ url: URL) -> Int {
        url.extractId()
    }

    static func mapGender(_ gender: PeopleCodable.Gender) -> People.Gender {
        switch gender {
            case .male:
                return .male
            case .female:
                return .female
            case .unknown:
                return .unknown
            case .notApplicable:
                return .noInfo
        }
    }

    static func mapHeight(_ height: String) -> Int {
        Int(height) ?? 0
    }

    static func mapMass(_ mass: String) -> Int {
        Int(mass) ?? 0
    }

    static func mapIds(_ urls: [URL]) -> [Int] {
        urls.map{ $0.extractId() }
    }
}
