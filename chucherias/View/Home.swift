//
//  Home.swift
//  chucherias
//
//  Created by Aldo Arias on 9/7/24.
//

import SwiftUI

struct Home: View {
    
    // Category View Properties
    @State var selectedCategory = ""
    
    var body: some View {
        ScrollView{
            VStack {
                // Header
                HStack {
                    Text("Ordena tus antojitos en **Delicias**")
                        .font(.system(size: 30))
                        .padding(.trailing)
                    Spacer()
                    Image(systemName: "line.3.horizontal")
                        .imageScale(.large)
                        .padding()
                        .frame(width: 70, height: 90)
                        .overlay(RoundedRectangle(cornerRadius: 50).stroke().opacity(0.4))
                    
                }
                .padding(20)
                // Category List
                CategoryListView
                    
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
    
    // Category List View
    var CategoryListView: some View {
        HStack {
            ScrollView(.horizontal, showsIndicators: false){
                HStack {
                    ForEach(categoryList, id: \.id) { item in
                        Button {
                            selectedCategory = item.title
                        } label: {
                            HStack {
                                if item.title != "All" {
                                    Image(systemName: item.icon)
                                        .foregroundColor(selectedCategory == item.title ? .yellow : .black)
                                }
                                
                                Text(item.title)
                            }
                            .padding(20)
                            .background(selectedCategory == item.title ? .black : .gray.opacity(0.1))
                            .foregroundColor(selectedCategory != item.title ? .black : .white)
                            .clipShape(Capsule())
                        }
                    }
                }
                .padding(.horizontal, 20)
            }
        }
    }
    
    // Product Cards View
    struct ProductCard: View {
        var product: Product
        
        var body: some View {
            ZStack {
                
            }
            .padding()
            .frame(width: 336, height: 422)
            .background(product.color.opacity(0.2))
            .clipShape(.rect(cornerRadius: 60))
            .padding(.leading, 20)
        }
    }
    
}

#Preview {
    Home()
}
