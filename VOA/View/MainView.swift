//
//  ContentView.swift
//  VOA
//
//  Created by Randy Senjaya on 15/08/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var favorites = Favorite()
    
    var body: some View {
        
        TabView{
            NewsListView()
                .tabItem {
                    Image(systemName: "doc.text.image")
                    Text("Browse")
                }
                .tag(0)
            
            NewsSearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Browse")
                }
                .tag(1)
            
            NewsBookmarkView()
                .tabItem {
                    Image(systemName: "bookmark")
                    Text("Browse")
                }
                .tag(2)
        }.environmentObject(favorites)
    }
    
}

