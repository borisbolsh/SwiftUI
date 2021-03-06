//
//  ListView.swift
//  ToDoList
//
//  Created by Boris Bolshakov on 16.12.21.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
        "This is the first title!",
        "This is the second title!",
        "This is the third title!"
    ]
    
    var body: some View {
        
        List {
            ForEach(items, id: \.self) { item in
                  ListRowView(title: item)
              }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List 📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("Add", destination: AddView())
            )
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
                  ListView()
        }
    }
}
