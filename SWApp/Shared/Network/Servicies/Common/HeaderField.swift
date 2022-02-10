//
//  HeaderField.swift
//  SWApp
//
//  Created by Diego Otero Mata on 10/2/22.
//

import Foundation

enum HeaderField: String, RawRepresentable, Equatable {
    public typealias RawValue = String
    case authorization = "Authorization"
    case accept = "Accept"
    case contentType = "Content-Type"
    case acceptLanguage = "Accept-Language"
}
