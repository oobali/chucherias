//
//  Home.swift
//  chucherias
//
//  Created by Aldo Arias on 9/7/24.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        ScrollView{
            VStack {
                // Header
                HeaderView(header: header)
                // Category List
                CategoryListView(categoryList: categoryList)
                    
                // Collectoin View
                HStack {
                    Text("**Nuestros** Pasteles")
                        .font(.system(size: 26))
                    Spacer()
                    Image(systemName: "arrow.right")
                        .imageScale(.large)
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 15)
                
                // Products List
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(productList, id: \.id) {item in
                            ProductCard(product: item)
                        }
                    }
                }
            }
            
        }
    }
}

#Preview {
    HomeView()
}
