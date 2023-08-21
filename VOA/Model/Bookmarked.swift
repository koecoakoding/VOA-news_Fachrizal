//
//  Bookmarked.swift
//  VOA
//
//  Created by Randy Senjaya on 21/08/23.
//

import Foundation

struct Favorites : Identifiable{
    let id = UUID()
    let title: String
    let link: String
    let isoDate: String
    let description: String
    let image: String
    let favCheck: Bool
    
    
}
