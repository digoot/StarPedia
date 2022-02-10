//
//  Array+Extensions.swift
//  SWApp
//
//  Created by Diego Otero Mata on 10/2/22.
//

import Foundation

extension Array where Element: Hashable {
    func removingDuplicates() -> [Element] {
        var addedDict = [Element: Bool]()

        return filter {
            addedDict.updateValue(true, forKey: $0) == nil
        }
    }
}
