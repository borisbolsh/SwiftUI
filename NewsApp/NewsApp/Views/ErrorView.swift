//
//  ErrorView.swift
//  NewsApp
//
//  Created by Boris Bolshakov on 1.12.21.
//

import SwiftUI

struct ErrorView: View {
    typealias ErrorViewActionHandler = () -> Void
    
    let error: Error
    let handler: ErrorViewActionHandler
    
    init(
        error: Error,
        handler: @escaping ErrorView.ErrorViewActionHandler
    ) {
        self.error = error
        self.handler = handler
    }
    
    var body: some View {
        VStack {
            Image(systemName: "exclamationmark.icloud.fill")
                .foregroundColor(.gray)
                .font(.system(size: 50, weight: .heavy))
                .padding(.bottom, 4)
            Text("Ooops")
                .foregroundColor(Theme.textColor)
                .font(.system(size: 30, weight: .heavy))
                .padding(.bottom, 2)
            Text(error.localizedDescription)
                .foregroundColor(.gray)
                .font(.system(size: 15, weight: .regular))
                .multilineTextAlignment(.center)
                .padding(.bottom, 4)
            Button(action: {
                handler()
            }, label: {
                Text("Retry")
            })
        }
    }
}


struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView(error: APIError.decodingError) {}
            .previewLayout(.sizeThatFits)
    }
}
