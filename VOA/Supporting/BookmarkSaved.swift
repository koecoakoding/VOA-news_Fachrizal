//
//  BookmarkSaved.swift
//  VOA
//
//  Created by Randy Senjaya on 21/08/23.
//

import Foundation

final class Favorite: ObservableObject{
    private var newsFavs: Set<UUID> = []
    private let saveKey = "fav_key"
    
    init(){
        newsFavs = []
    }
    
    func contains(_ NewsFav: News) -> Bool {
        newsFavs.contains(NewsFav.id)
    }
    
    func add(_ NewsFav: News ){
        objectWillChange.send()
        newsFavs.insert(NewsFav.id)
        save()
        print("Bookmarked")
    }
    
    func remove(_ NewsFav: News){
        objectWillChange.send()
        newsFavs.remove(NewsFav.id)
        save()
    }
    
    func save(){
        
    }
}
