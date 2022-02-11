//
//  SpeciesService.swift
//  SWApp
//
//  Created by Diego Otero Mata on 10/2/22.
//

import Foundation

enum SpeciesService: Service {
    case list(page: Int = 1)
    case single(id: Int)
    case search(term: String)
}

extension SpeciesService {
    var path: String {
        switch self {
            case .list, .search:
                return "/species/"
            case .single(let id):
                return "/species/\(id)/"
        }
    }

    var parameters: [String : Any]? {
        switch self {
            case .list(let page):
                return ["page": page]
            case .search(let term):
                return ["search": term]
            default:
                return [:]
        }
    }
}
