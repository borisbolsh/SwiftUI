//
//  NewsResponse.swift
//  NewsApp
//
//  Created by Boris Bolshakov on 1.12.21.
//

import Foundation

// MARK: - NewsResponse
struct NewsResponse: Codable {
    let articles: [Article]
}

// MARK: - Article
struct Article: Codable, Identifiable, Equatable {
    let id = UUID()
    let author: String?
    let url: String?
    let source, title: String?
    let articleDescription: String?
    let image: String?
    let date: Date?
    
    enum CodingKeys: String, CodingKey {
        case author, url, source, title
        case articleDescription = "description"
        case image, date
    }
}

extension Article {
    static var dummyData: [Article] {
        [
            Article(
                author: "a",
                url: nil,
                source: "Fox News",
                title: "Jerry Jones has 'visions of sugar plums' imagining Kyle Pitts with Cowboys - Fox News",
                articleDescription: "Imagining Kyle Pitts with Cowboys",
                image: "https://profootballtalk.nbcsports.com/wp-content/uploads/sites/25/2021/03/GettyImages-1288945114-e1615225855847.jpg",
                date: Date()
            ),
            Article(
                author: "a",
                url: nil,
                source: "Fox News",
                title: "Jerry Jones has 'visions of sugar plums' imagining Kyle Pitts with Cowboys - Fox News",
                articleDescription: "Imagining Kyle Pitts with Cowboys",
                image: "https://profootballtalk.nbcsports.com/wp-content/uploads/sites/25/2021/03/GettyImages-1288945114-e1615225855847.jpg",
                date: Date()
            ),
            Article(
                author: "a",
                url: nil,
                source: "Fox News",
                title: "Jerry Jones has 'visions of sugar plums' imagining Kyle Pitts with Cowboys - Fox News",
                articleDescription: "Imagining Kyle Pitts with Cowboys",
                image: "https://profootballtalk.nbcsports.com/wp-content/uploads/sites/25/2021/03/GettyImages-1288945114-e1615225855847.jpg",
                date: Date()
            ),
            Article(
                    author: "a",
                    url: nil,
                    source: "Fox News",
                    title: "Jerry Jones has 'visions of sugar plums' imagining Kyle Pitts with Cowboys - Fox News",
                    articleDescription: "Imagining Kyle Pitts with Cowboys",
                    image: "https://profootballtalk.nbcsports.com/wp-content/uploads/sites/25/2021/03/GettyImages-1288945114-e1615225855847.jpg",
                    date: Date()
                ),
            Article (
                author: "a",
                url: nil,
                source: "Fox News",
                title: "Jerry Jones has 'visions of sugar plums' imagining Kyle Pitts with Cowboys - Fox News",
                articleDescription: "Imagining Kyle Pitts with Cowboys",
                image: "https://profootballtalk.nbcsports.com/wp-content/uploads/sites/25/2021/03/GettyImages-1288945114-e1615225855847.jpg",
                date: Date()
            ),
            Article (
                author: "a",
                url: nil,
                source: "Fox News",
                title: "Jerry Jones has 'visions of sugar plums' imagining Kyle Pitts with Cowboys - Fox News",
                articleDescription: "Imagining Kyle Pitts with Cowboys",
                image: "https://profootballtalk.nbcsports.com/wp-content/uploads/sites/25/2021/03/GettyImages-1288945114-e1615225855847.jpg",
                date: Date()
            )
        ]
        
    }
}
