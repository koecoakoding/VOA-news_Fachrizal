//
//  NewsBookmarkView.swift
//  VOA
//
//  Created by Randy Senjaya on 17/08/23.
//

import SwiftUI

struct NewsBookmarkView: View {
    @StateObject private var newsViewModel = NewsViewModels()
    @EnvironmentObject var favorite: Favorite
    
    var body: some View {
        Text("Sample")
//        NavigationStack {
//            if newsViewModel.isLoading {
//                ProgressView("Load News...")
//            } else {
//                if favorite.contains(News){
//
//                    List{
//
//                        ZStack{
//                            NavigationLink(""){
//                                DetailsNewsListView(news: News)
//                            }
//                            .opacity(0.0)
//
//                            RowNewsListView(news: News)
//                                .listRowSeparator(.visible)
//                        }
//                    }
//                    .listStyle(.plain)
//                    .navigationTitle("VOA NEWS")
//                    .navigationBarTitleDisplayMode(.inline)
//                    .refreshable {
//                        await newsViewModel.fetchData()
//                    }
//
//                }
//            }
//
//        }
//        .task {
//            await newsViewModel.fetchData()
//        }
//
    }
}




