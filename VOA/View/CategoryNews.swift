//
//  CategoryNews.swift
//  VOA
//
//  Created by Randy Senjaya on 21/08/23.
//

import SwiftUI

struct CategoriesView: View {
    
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10) {
                
                Button {
                    
                } label: {
                    Text("All")
                        .padding(.horizontal, 12)
                        .padding(.vertical, 5)
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                }
                
                
                Button {
                } label: {
                    Text("Ga dapat Kategori")
                        .padding(.horizontal, 12)
                        .padding(.vertical, 5)
                        .background( Color.gray)
                        .foregroundColor(.black)
                        .cornerRadius(15)
                }
                
                Button {
                } label: {
                    Text("Cuman Gimmick Ini Mas")
                        .padding(.horizontal, 12)
                        .padding(.vertical, 5)
                        .background( Color.gray)
                        .foregroundColor(.black)
                        .cornerRadius(15)
                }
                
            }
            .padding(.horizontal)
        }
    }
}
