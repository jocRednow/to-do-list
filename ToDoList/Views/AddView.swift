//
//  AddView.swift
//  ToDoList
//
//  Created by Stepan Krasnov on 06/08/2024.
//

import SwiftUI

struct AddView: View {
    
    @State var textFieldText: String = ""
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type something here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(.systemGray6))
                .cornerRadius(10)
                
                Button(
                    action: {},
                    label: {
                        Text("Save".uppercased())
                            .foregroundColor(.white)
                            .font(.headline)
                            .frame(height: 55)
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                            .background(Color.accentColor)
                            .cornerRadius(10)
                    })
            }
            .padding(16)
        }
        .navigationTitle("Add an Item 🖊️")
    }
}

#Preview {
    NavigationView {
        AddView()
    }
}
