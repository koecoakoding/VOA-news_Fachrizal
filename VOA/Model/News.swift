//
//  News.swift
//  VOA
//
//  Created by Randy Senjaya on 17/08/23.
//

import Foundation

struct News : Identifiable{
    let id = UUID()
    let title: String
    let link: String
    let isoDate: String
    let description: String
    let image: String
}
