//
//  StarshipsService.swift
//  SWApp
//
//  Created by Diego Otero Mata on 10/2/22.
//

import Foundation

enum StarshipsService: Service {
    case list(page: Int = 1)
    case single(id: Int)
    case search(term: String)
}

extension StarshipsService {
    var path: String {
        switch self {
            case .list, .search:
                return "/starships/"
            case .single(let id):
                return "/starships/\(id)/"
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
