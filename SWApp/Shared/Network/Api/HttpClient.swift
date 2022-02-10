//
//  HttpClient.swift
//  SWApp
//
//  Created by Diego Otero Mata on 10/2/22.
//

import Foundation
import Combine

protocol HttpClient {
    func dataTask(for request: URLRequest) -> DataTaskPublisher
}
