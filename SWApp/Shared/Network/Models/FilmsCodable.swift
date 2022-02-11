//
//  FilmsCodable.swift
//  SWApp
//
//  Created by Diego Otero Mata on 10/2/22.
//

import Foundation

struct FilmsCodable: Codable, Equatable {
    let url: URL
    let title: String
    let episodeId: Int
    let openingCrawl: String
    let director: String
    let producer: String
    let releaseDate: Date
    let species: [URL]
    let starships: [URL]
    let vehicles: [URL]
    let characters: [URL]
    let planets: [URL]

    enum CodingKeys: String, CodingKey {
        case url, title, director, producer, species, starships, vehicles, characters, planets
        case episodeId = "episode_id"
        case openingCrawl = "opening_crawl"
        case releaseDate = "release_date"
    }
}
