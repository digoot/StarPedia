//
//  HttpClientSession.swift
//  SWApp
//
//  Created by Diego Otero Mata on 10/2/22.
//

import Foundation
import Combine

typealias DataTaskPublisher = URLSession.DataTaskPublisher

final class HttpClientSession: HttpClient {
    private let urlSession: URLSession

    init(urlSession: URLSession) {
        self.urlSession = urlSession
    }

    func dataTask(for request: URLRequest) -> DataTaskPublisher {
        return urlSession.dataTaskPublisher(for: request.url!)
    }
}
