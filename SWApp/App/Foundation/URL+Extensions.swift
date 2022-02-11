//
//  URL+Extensions.swift
//  SWApp
//
//  Created by Diego Otero Mata on 10/2/22.
//

import Foundation

extension URL {
    func extractId() -> Int {
        return Int(self.lastPathComponent) ?? 0
    }
}
