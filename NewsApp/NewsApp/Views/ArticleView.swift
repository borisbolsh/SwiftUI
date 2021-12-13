//
//  ArticleView.swift
//  NewsApp
//
//  Created by Boris Bolshakov on 1.12.21.
//

import SwiftUI
import URLImage
import URLImageStore

struct ArticleView: View {
    
    let article: Article
    @State var isLoading: Bool
    
    var body: some View {
        HStack {
            
            if let imageURL = article.image,
               let url = URL(string: imageURL) {
                URLImage(url) {
                    PlaceholderImageView()
                } inProgress: { progress in
                    PlaceholderImageView()
                } failure: { error, _ in
                    PlaceholderImageView()
                } content: { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                }
                .frame(width: 100, height: 100)
                .cornerRadius(10)
            }
            
            VStack(alignment: .leading, spacing: 4) {
                
                Text(article.title ?? "")
                    .foregroundColor(Theme.textColor)
                    .font(.system(size: 18, weight: .semibold))
                Text(article.source ?? "")
                    .foregroundColor(.gray)
                    .font(.footnote)
                    
                if let date = article.date {
                    HStack {
                        Text(date, style: .date)
                            .font(.system(size: 12, weight: .bold))
                            .foregroundColor(.gray)
                        Text(date, style: .time)
                            .foregroundColor(.gray)
                            .font(.system(size: 12))
                    }
                }
                
            }
            
                
        }
//        .redacted(reason: isLoading ? .placeholder : [])
//        .allowsHitTesting(!isLoading)
    }
}

struct PlaceholderImageView: View {
    var body: some View {
        Image(systemName: "photo.fill")
            .foregroundColor(.white)
            .background(Color.gray)
            .frame(width: 100, height: 100)
    }
}

struct ArticleView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleView(article: Article.dummyData.first!, isLoading: false).previewLayout(.sizeThatFits)
    }
}

