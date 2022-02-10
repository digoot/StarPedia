//
//  DataError.swift
//  SWApp
//
//  Created by Diego Otero Mata on 10/2/22.
//

import Foundation

protocol DataError: Error {
    init(statusCode: Int?, data: Data?)
    static var fallbackMessage: String { get }
}

extension DataError {
    static var fallbackMessage: String { "Something goes wrong..." }
}
