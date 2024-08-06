//
//  ListView.swift
//  ToDoList
//
//  Created by Stepan Krasnov on 06/08/2024.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
        "This is the first item",
        "This is the second",
        "Third!"
    ]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
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
