//
//  Service.swift
//  VOA
//
//  Created by Randy Senjaya on 17/08/23.
//

import Foundation

class NewsViewModels : ObservableObject{
    @Published var news: [News] = []
    @Published var isLoading = false
    @Published var searchText:String = ""
    @Published var newsFavs: Set<UUID> = []
    @Published var text:String = ""
    
    
//    var favNews: [News] {
//        return news.filter { news in
//            if (newsFavs == news.id){
//                
//            }
//        }
//    }
    
//    var category: [News]{
//        if text == "All"{
//            return news
//        } else {
//            return []
//        }
//    }
    
    var listNews: [News] {
        return news
    }
    
    var filteredNews: [News] {
        if searchText.isEmpty {
            return []
        }else {
            return news.filter { news in
                news.title.localizedCaseInsensitiveContains(searchText)
            }
        }
    }
    
    
    func fetchData() async{
        DispatchQueue.main.async{
            self.isLoading = true
        }
        
        Task{
            do{
                let url = URL(string: "https://berita-indo-api-next.vercel.app/api/voa-news/")!
                let (data, _) = try await URLSession.shared.data(from: url)
                let response = try JSONDecoder().decode(NewsResponse.self, from: data)
                
                DispatchQueue.main.async {
                    self.news = response.data.map({ newsData in
                        News(
                            title: newsData.title,
                            link: newsData.link,
                            isoDate: newsData.isoDate,
                            description: newsData.description,
                            image: newsData.image
                        )
                    })
                }
                self.isLoading = false
            }
            catch{
                print("Error fetching data: \(error)")
            }
        }
    }
    
}
