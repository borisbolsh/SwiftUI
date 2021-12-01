//
//  ResultState.swift
//  NewsApp
//
//  Created by Boris Bolshakov on 1.12.21.
//

import Foundation

enum ResultState {
    case loading
    case success(content: [Article])
    case failed(error: Error)
}
