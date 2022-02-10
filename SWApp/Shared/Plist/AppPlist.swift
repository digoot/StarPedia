//
//  AppPlist.swift
//  SWApp
//
//  Created by Diego Otero Mata on 10/2/22.
//

import Foundation

struct AppPlist: Plist {
    var url: String {
        dictionary?["ApiUrl"] as? String ?? ""
    }

    var imagesUrl: String {
        dictionary?["ImagesUrl"] as? String ?? ""
    }

    private let dictionary: [String: Any]?

    init(dictionary: [String: Any]?) {
        self.dictionary = dictionary
    }
}
