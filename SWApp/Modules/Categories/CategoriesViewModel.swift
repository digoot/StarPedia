//
//  CategoriesViewModel.swift
//  SWApp
//
//  Created by Diego Otero Mata on 10/2/22.
//

import Foundation
import Combine

protocol CategoriesViewModel {}

final class CategoriesViewModelImpl: CategoriesViewModel {
    enum CategoriesViewModelState {
        case loading
        case ready
    }
}

struct CategoryCellModel {
    let title: String
    let subtitle: String
    let image: String
}
