//
//  People.swift
//  SWApp
//
//  Created by Diego Otero Mata on 10/2/22.
//

import Foundation

enum PeopleService: Service {
    case list(page: Int = 1)
    case single(id: Int)
    case search(term: String)
}

extension PeopleService {
    var path: String {
        switch self {
            case .list, .search:
                return "/people/"
            case .single(let id):
                return "/people/\(id)/"
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
