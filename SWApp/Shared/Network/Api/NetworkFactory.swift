//
//  NetworkFactory.swift
//  SWApp
//
//  Created by Diego Otero Mata on 10/2/22.
//

import Foundation

final class NetworkFactory {
    static var api: Api = {
        Api(httpClient: httpClient, requestBuilder: requestBuilder)
    }()

    private static var plist: Plist = {
        AppPlist(dictionary: Bundle.main.infoDictionary)
    }()

    private static var requestBuilder: RequestBuilder = {
        RequestBuilder(plist: plist)
    }()

    static var httpClient: HttpClient = {
        HttpClientSession(urlSession: urlSession)
    }()

    private static var urlSession: URLSession = {
        let configuration = URLSessionConfiguration.default
        return URLSession(configuration: configuration)
    }()
}
