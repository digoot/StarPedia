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
