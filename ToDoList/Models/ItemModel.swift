//
//  ItemModel.swift
//  ToDoList
//
//  Created by Stepan Krasnov on 06/08/2024.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
