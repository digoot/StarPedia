//
//  HTTPURLResponse+Extensions.swift
//  SWApp
//
//  Created by Diego Otero Mata on 10/2/22.
//

import Foundation

extension HTTPURLResponse {
    var isSuccess: Bool {
        (200...299).contains(statusCode)
    }

    var noContent: Bool {
        statusCode == 204
    }
}
