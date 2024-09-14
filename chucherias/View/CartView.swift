//
//  CartView.swift
//  chucherias
//
//  Created by Aldo Arias on 9/8/24.
//

import SwiftUI

struct CartView: View {
    
    @Environment(\.presentationMode) var mode
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack{
                    // Header
                    HStack {
                        Text(.init("Cart"))
                            .font(.system(size: 30))
                            .padding(.trailing)
                        Spacer()
                        Button {
                            mode.wrappedValue.dismiss()
                        } label: {
                            Text("3")
                                .imageScale(.large)
                                .padding()
                                .frame(width: 70, height: 90)
                                .background(.yellow.opacity(0.5))
                                .clipShape(Capsule())
                        }
                        .foregroundColor(.black)
                        Button {
                            mode.wrappedValue.dismiss()
                        } label: {
                            Image(systemName: "arrow.left")
                                .imageScale(.large)
                                .padding()
                                .frame(width: 70, height: 90)
                                .overlay(RoundedRectangle(cornerRadius: 50).stroke().opacity(0.4))
                                
                        }
                        .foregroundColor(.black)
                    }
                    // Cart Products
                    VStack(spacing: 20) {
                        ForEach(productList) {
                            item in
                            CartProductCard(product: item)
                        }
                    }

                    // Total Amount
                    CartTotalCard()
                    // Button to Make Payment
                    CartPaymentButton()
            
                }.padding(20)
            }
        }
    }
}
#Preview {
    CartView()
}


// Cart Product View
struct CartProductCard: View {

    var product: Product
    
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            Image(product.image)
                .resizable()
                .scaledToFit()
                .padding()
                .frame(width: 80, height: 80)
                .background(.gray.opacity(0.1))
                .clipShape(Circle())
            VStack(alignment: .leading, content: {
                Text("\(product.name)")
                    .font(.headline)
                Text("\(product.category)")
                    .font(.callout)
                    .opacity(0.5)
            })
            
            Spacer()
            
            Text("$\(String(format: "%.2f", product.price))")
                .padding()
                .background(.yellow.opacity(0.5))
                .clipShape(Capsule())
        }
    }
}

struct CartTotalCard: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Delivery Amount")
                Spacer()
                Text("$4.00")
                    .font(.system(size: 24, weight: .semibold))
                
            }
            Divider()
            Text("Total")
                .font(.system(size: 24))
            Text("USD 38.00")
                .font(.system(size: 36, weight: .semibold))
        }
        .padding(20)
        .frame(maxWidth: .infinity)
        .background(.yellow.opacity(0.5))
        .clipShape(.rect(cornerRadius: 30))
        
    }
}

struct CartPaymentButton: View {
    var body: some View {
        Button {
            
        } label: {
            Text("Make Payment")
                .frame(maxWidth: .infinity)
                .frame(height: 80)
                .background(.yellow.opacity(0.5))
                .font(.system(size: 20, weight: .semibold))
                .foregroundColor(.black)
                .clipShape(Capsule())
                .padding(.vertical)
        }
    }
}
