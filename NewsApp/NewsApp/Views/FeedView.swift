//
//  FeedView.swift
//  NewsApp
//
//  Created by Boris Bolshakov on 1.12.21.
//

import SwiftUI
import Combine

struct FeedView: View {
    
    @Environment(\.openURL) var openURL
    
    @StateObject var viewModel = NewsViewModelImpl(service: NewsServiceImpl())
    
    var body: some View {
        NavigationView {
            Group {
                switch viewModel.state {
               
                case .failed(let error):
                    ErrorView(error: error) {
                        self.viewModel.getArticles()
                    }
                
                default:
                    List(viewModel.isLoading ? Article.dummyData : viewModel.articles) { article in
                        ArticleView(article: article, isLoading: false)
                            .onTapGesture {
                                load(url: article.url)
                            }
                    }
                    .navigationTitle(Text("News"))
                }
            }
        }.onAppear {
            viewModel.getArticles()
        }
    }
    
    func load(url: String?) {
        guard let link = url,
              let url = URL(string: link) else { return }
        
        openURL(url)
    }
    
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
