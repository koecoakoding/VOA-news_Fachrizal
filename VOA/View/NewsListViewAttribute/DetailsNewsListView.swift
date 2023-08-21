//
//  DetailsNewsListView.swift
//  VOA
//
//  Created by Randy Senjaya on 17/08/23.
//

import SwiftUI


struct DetailsNewsListView: View {
    
    let news : News
    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject var favorite: Favorite
    
    var body: some View {
        
        NavigationStack{
            ScrollView{
                
                VStack(alignment: .leading) {
                    AsyncImage(url: URL(string: news.image)) { image in
                        image
                            .resizable()
                            .frame(maxWidth: .infinity)
                            .frame(height: 240)
                            .scaledToFit()
                    } placeholder: {
                        ProgressView()
                            .frame(width: 140, height: 140)
                    }
                    Text("Published at: " + news.isoDate.formatdate())
                        .font(.system(size: 12))
                        .padding(.leading, 16)
                        .padding(.trailing, 16)
                        .frame(maxWidth: .infinity, alignment:.trailing)
                    
                    Text(news.title)
                        .fontWeight(.semibold)
                        .font(.system(size: 24))
                        .padding(.leading, 16)
                        .padding(.trailing, 16)
                        .padding(.top, 16)
                        .padding(.bottom, 4)
                    
                    Text(news.description)
                        .font(.system(size: 16))
                        .lineLimit(nil)
                        .padding(.leading, 16)
                        .padding(.trailing, 16)
                    
                    Spacer()
                    
                    Link(destination: URL(string: news.link)!) {
                        Text("Selengkapnya >>")
                            .foregroundColor(.blue)
                            .fontWeight(.semibold)
                            .font(.system(size: 20))
                            .frame(maxWidth: .infinity, alignment:.trailing)
                            .padding(.trailing, 16)
                        
                    }
                }
            }
        }
        .navigationBarBackButtonHidden(true)
        .toolbar(.hidden, for: .tabBar)
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading) {
                Button{
                    dismiss()
                } label: {
                    Image(systemName: "chevron.backward")
                }
            }
        }.foregroundColor(.black)
            .toolbar{ToolbarItem(placement: .navigationBarTrailing) {
                HStack{
                    Button(){
                        
                    }label: {
                        Image(systemName: "square.and.arrow.up")
                    }
                    
                    if (favorite.contains(news)){
                        Button(){
                            favorite.remove(news)
                        }label: {
                            Image(systemName: "bookmark.fill")
                        }
                    } else{
                        Button(){
                            favorite.add(news)
                        }label: {
                            Image(systemName: "bookmark")
                        }
                    }
                    
                }
            }
            }.foregroundColor(.black)
    }
    
    
}

