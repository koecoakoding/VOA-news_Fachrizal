//
//  RowNewsListView.swift
//  VOA
//
//  Created by Randy Senjaya on 17/08/23.
//

import SwiftUI

struct RowNewsListView: View {
    let news : News
    
    var body: some View {
        HStack(spacing: 16){
            AsyncImage(url: URL(string: news.image)) { image in
                image
                    .resizable()
                    .frame(width: 140, height: 140)
                    .scaledToFit()
            } placeholder: {
                ProgressView()
                    .frame(width: 140, height: 140)
            }
            
            VStack(){
                VStack(alignment: .leading){
                    Text(news.title)
                        .fontWeight(.semibold)
                        .font(.system(size: 18))
                        .lineLimit(4)
                        .padding(4)
                    
                    Spacer()
                    
                    HStack{
                        Text(news.isoDate.formatdate())
                            .font(.system(size: 12))
                        
                        Spacer()
                        
                        Button {
                        } label: {
                            Image(systemName: "ellipsis")
                        }
                    }
                    
                }
                
            }
        }
        .fixedSize(horizontal: false, vertical: true)
    }
}
