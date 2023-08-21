//
//  NewsListView.swift
//  VOA
//
//  Created by Randy Senjaya on 17/08/23.
//

import SwiftUI

struct NewsListView: View {
    @StateObject private var newsViewModel = NewsViewModels()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @Environment(\.dismiss) private var dismiss

    
    var body: some View {
        NavigationStack {
            if newsViewModel.isLoading {
                ProgressView("Load News...")
            } else {
                VStack{
                    
                    CategoriesView()
                    List(newsViewModel.listNews) { newsItem in
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
                    .refreshable {
                        await newsViewModel.fetchData()
                    }
                    
                }
            }
            
            }.task {
                await newsViewModel.fetchData()
                }
                

    }
}
