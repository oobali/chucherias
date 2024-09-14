//
//  HeaderModel.swift
//  chucherias
//
//  Created by Aldo Arias on 9/8/24.
//

import SwiftUI

struct HeaderModel: Identifiable, Hashable {
    var id: UUID = .init()
    var title: String
    var icon: String
}

// Sample header
var headerHome = HeaderModel(title: "Ordena tus antojitos en **Delicias**", icon: "line.3.horizontal")
var headerCollections = HeaderModel(title: "Ordena tus antojitos en **Delicias**", icon: "arrow.left")
var headerCart = HeaderModel(title: "Cart", icon: "3")
