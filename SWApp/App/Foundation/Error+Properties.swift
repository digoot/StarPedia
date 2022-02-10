//
//  Error+Properties.swift
//  SWApp
//
//  Created by Diego Otero Mata on 10/2/22.
//

import Foundation

extension Error {
    var code: Int { return (self as NSError).code }
}
