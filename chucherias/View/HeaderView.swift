//
//  HeaderView.swift
//  chucherias
//
//  Created by Aldo Arias on 9/8/24.
//

import SwiftUI

struct HeaderView: View {
    var header: HeaderModel
    var presentationMode: Binding<PresentationMode>
    var body: some View {
        HStack {
            Text(.init("\(header.title)"))
                .font(.system(size: 30))
                .padding(.trailing)
            Spacer()
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: header.icon)
                    .imageScale(.large)
                    .padding()
                    .frame(width: 70, height: 90)
                    .overlay(RoundedRectangle(cornerRadius: 50).stroke().opacity(0.4))
                    .foregroundColor(.black)
            }

            
        }
        .padding(20)
    }
}
