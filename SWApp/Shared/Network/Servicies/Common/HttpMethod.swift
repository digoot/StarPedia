//
//  HttpMethod.swift
//  SWApp
//
//  Created by Diego Otero Mata on 10/2/22.
//

import Foundation

enum HttpMethod: String, RawRepresentable, Equatable {
    public typealias RawValue = String
    case options = "OPTIONS"
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case patch = "PATCH"
    case delete = "DELETE"
    case trace = "TRACE"
    case connect = "CONNECT"
}
