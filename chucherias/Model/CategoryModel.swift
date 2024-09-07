//
//  CategoryModel.swift
//  chucherias
//
//  Created by Aldo Arias on 9/7/24.
//

import SwiftUI

struct CategoryModel: Identifiable, Hashable {
    var id: UUID = .init()
    var icon: String
    var title: String
}

var categoryList: [CategoryModel] = [
    CategoryModel(icon: "", title: "All"),
    CategoryModel(icon: "birthday.cake", title: "Pasteles"),
    CategoryModel(icon: "carrot", title: "Saludables"),
    CategoryModel(icon: "waterbottle", title: "Bevidas")
]
