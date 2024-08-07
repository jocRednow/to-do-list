//
//  ListView.swift
//  ToDoList
//
//  Created by Stepan Krasnov on 06/08/2024.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [ItemModel] = [
       ItemModel(title: "First One", isCompleted: false),
       ItemModel(title: "Second One", isCompleted: true),
       ItemModel(title: "Third One", isCompleted: false),
    ]
    
    var body: some View {
        List {
            ForEach(items) { item in
                ListRowView(item: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("To Do List 📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink("Add", destination: AddView())
        )
    }
}

#Preview {
    NavigationView {
        ListView()
    }
}
