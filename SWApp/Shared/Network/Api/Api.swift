//
//  Api.swift
//  SWApp
//
//  Created by Diego Otero Mata on 10/2/22.
//

import Foundation
import Combine

final class Api {
    private let httpClient: HttpClient
    private let requestBuilder: RequestBuilder

    init(httpClient: HttpClient, requestBuilder: RequestBuilder) {
        self.httpClient = httpClient
        self.requestBuilder = requestBuilder
    }

    func listPeople<ApiError: DataError>() -> AnyPublisher<[People], ApiError> {
        return httpClient
            .dataTask(for: requestBuilder.build(service: PeopleService.list()))
            .tryMap({ (data, response) in
                let httpResponse = response as? HTTPURLResponse
                if httpResponse?.isSuccess ?? false {
                    return data
                }
                throw ApiError(statusCode: httpResponse?.statusCode, data: data)
            })
            .decode(type: PageableCodable<PeopleCodable>.self, decoder: JSONDecoder())
            .map { $0.results.map{ PeopleMapper.map($0) }}
            .mapError { self.mapError(error: $0) }
            .eraseToAnyPublisher()
    }

    func getPeople<ApiError: DataError>(id: Int) -> AnyPublisher<People, ApiError> {
        return httpClient
            .dataTask(for: requestBuilder.build(service: PeopleService.single(id: id)))
            .tryMap { (data, response) in
                let httpResponse = response as? HTTPURLResponse
                if httpResponse?.isSuccess ?? false {
                    return data
                }
                throw ApiError(statusCode: httpResponse?.statusCode, data: data)
            }
            .decode(type: PeopleCodable.self, decoder: JSONDecoder())
            .map { PeopleMapper.map($0) }
            .mapError { self.mapError(error: $0) }
            .eraseToAnyPublisher()
    }
}

private extension Api {
    func mapError<ApiError: DataError>(error: Error) -> ApiError {
        if let err = error as? ApiError {
            return err
        }
        return ApiError(statusCode: error.code, data: nil)
    }

    func decoder() -> JSONDecoder {
        return JSONDecoder()
    }
}
