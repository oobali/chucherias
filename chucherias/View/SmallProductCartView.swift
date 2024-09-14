//
//  SmallProductCartView.swift
//  chucherias
//
//  Created by Aldo Arias on 9/8/24.
//

import SwiftUI

struct SmallProductCard: View {
    var product: Product
    var body: some View {
        ZStack {
            Image(product.image)
                .resizable()
                .scaledToFit()
                .clipShape(.rect(cornerRadius: 30))
                .padding(.trailing, -200)
                .rotationEffect(Angle(degrees: 30))
            ZStack {
                VStack(alignment: .leading, content: {
                    Text(.init("\(product.name)"))
                        .font(.system(size: 18, weight: .semibold))
                        .frame(width: 80)
                    
                    Text(.init("\(product.category)"))
                        .font(.system(size: 10))
                        .padding()
                        .background(.white.opacity(0.5))
                        .clipShape(Capsule())
                    
                    Spacer()
                    
                    HStack {
                        Text("$\(String(format: "%.2f", product.price))")
                            .font(.system(size: 14, weight: .semibold))
                        
                        Spacer()
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "basket")
                                .imageScale(.large)
                                .frame(width: 45, height: 40)
                                .background(.black)
                                .clipShape(Capsule())
                                .foregroundColor(.white)
                        }
                    }
                    .padding(.trailing, -12)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .frame(height: 45)
                    .background(.white.opacity(0.8))
                    .clipShape(Capsule())
                })
            }
            .padding(20)
            .frame(width: 170, height: 215)
        }
        .frame(width: 170, height: 215)
        .background(product.color.opacity(0.12))
        .clipShape(.rect(cornerRadius: 30))
        .padding(.leading, 10)
    }
}
