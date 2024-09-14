//
//  ProductCardView.swift
//  chucherias
//
//  Created by Aldo Arias on 9/8/24.
//

import SwiftUI

struct ProductCard: View {
    var product: Product
    var body: some View {
        ZStack {
            Image(product.image)
                .resizable()
                .scaledToFit()
                .clipShape(.rect(cornerRadius: 30))
                .padding(.trailing, -180)
                .rotationEffect(Angle(degrees: 30))
            ZStack {
                VStack(alignment: .leading, content: {
                    Text(.init("\(product.name)"))
                        .font(.system(size: 36, weight: .semibold))
                        .frame(width: 140)
                    
                    Text(.init("\(product.category)"))
                        .font(.callout)
                        .padding()
                        .background(.white.opacity(0.5))
                        .clipShape(Capsule())
                    Spacer()
                    HStack {
                        Text("$\(String(format: "%.2f", product.price))")
                            .font(.system(size: 24, weight: .semibold))
                        Spacer()
                        Button {
                            
                        } label: {
                            Image(systemName: "basket")
                                .imageScale(.large)
                                .frame(width: 90, height: 68)
                                .background(.black)
                                .clipShape(Capsule())
                                .foregroundColor(.white)
                        }
                    }
                    .padding(.leading)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .frame(height: 80)
                    .background(.white.opacity(0.8))
                    .clipShape(Capsule())
              
                })
            }
        }
        .padding(30)
        .frame(width: 336, height: 422)
        .background(product.color.opacity(0.12))
        .clipShape(.rect(cornerRadius: 60))
        .padding(.leading, 20)
    }
}
