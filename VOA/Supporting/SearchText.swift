//
//  SearchText.swift
//  VOA
//
//  Created by Randy Senjaya on 20/08/23.
//

import SwiftUI

struct ConditionalSearchable: ViewModifier {
    let isSearchable: Bool
    
    @ObservedObject var newsViewModel: NewsViewModels // Add viewModel parameter

    func body(content: Content) -> some View {
        if isSearchable {
            return AnyView(content.searchable(text: $newsViewModel.searchText))
        } else {
            return AnyView(content)
        }
    }
}

extension View {
    func conditionalSearchable(isSearchable: Bool, viewModel: NewsViewModels) -> some View {
        self.modifier(ConditionalSearchable(isSearchable: isSearchable, newsViewModel: viewModel))
    }
}
