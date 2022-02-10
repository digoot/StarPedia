//
//  RequestBuilder.swift
//  SWApp
//
//  Created by Diego Otero Mata on 10/2/22.
//

import Foundation

final class RequestBuilder {
    private let plist: Plist

    init(plist: Plist) {
        self.plist = plist
    }

    func build(service: Service) -> URLRequest {
        var urlComponents = URLComponents(string: plist.url)!
        urlComponents.path.append(service.path)
        var request = URLRequest(url: urlComponents.url!)
        service.headers.forEach { request.addValue($1 as? String ?? "", forHTTPHeaderField: $0) }
        return request
    }
    
}
