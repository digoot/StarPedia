//
//  Service.swift
//  SWApp
//
//  Created by Diego Otero Mata on 10/2/22.
//

import Foundation

protocol Service {
    var path: String { get }
    var method: HttpMethod { get }
    var parameters: [String: Any]? { get }
    var headers: [String: Any] { get }
}

extension Service {
    var method: HttpMethod { .get }
    var parameters: [String: Any]? { nil }
    var headers: [String: Any] { [HeaderField.contentType.rawValue: "application/json"] }
}
