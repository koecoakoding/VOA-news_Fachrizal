//
//  NewsSearchView.swift
//  VOA
//
//  Created by Randy Senjaya on 17/08/23.
//

import SwiftUI

import SwiftUI

struct NewsSearchView: View {
    @StateObject private var newsViewModel = NewsViewModels()
    @EnvironmentObject var favorite: Favorite
    
    var body: some View {
        NavigationStack {
            if newsViewModel.isLoading {
                ProgressView("Load News...")
            } else {
                List(newsViewModel.filteredNews) { newsItem in
                    ZStack{
                        NavigationLink(""){
                            DetailsNewsListView(news: newsItem)
                        }
                        .opacity(0.0)
                        
                        RowNewsListView(news: newsItem)
                            .listRowSeparator(.visible)
                    }
                    
                }
                .listStyle(.plain)
                .navigationTitle("VOA NEWS")
                .navigationBarTitleDisplayMode(.inline)
                .searchable(text: $newsViewModel.searchText)
                .refreshable {
                    await newsViewModel.fetchData()
                }
                
            }
        }
        .task {
            await newsViewModel.fetchData()
            
        }
//        .environmentObject(favorites)
    }
}



