//
//  CollectionsView.swift
//  chucherias
//
//  Created by Aldo Arias on 9/8/24.
//

import SwiftUI

struct CollectionsView: View {
    
    @Environment(\.presentationMode) var mode
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack{
                    // Header
                    HeaderView(header: headerCollections, presentationMode: mode)
                    // Grid
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], content: {
                        ForEach(productList, id: \.id) { item in
                            SmallProductCard(product: item)
                            
                        }
                    })
                    .padding(.horizontal)
                }
            }
        }
    }
}

#Preview {
    CollectionsView()
}
