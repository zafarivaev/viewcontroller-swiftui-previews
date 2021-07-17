//
//  User.swift
//  PreviewingViewControllers
//
//  Created by Zafar on 17/07/21.
//

import Foundation

struct User {
    let id: Int
    let title: String
    
    static var mockUsers: [User] {
        return [
            .init(id: 1, title: "User 1"),
            .init(id: 2, title: "User 2"),
            .init(id: 3, title: "User 3"),
            .init(id: 4, title: "User 4"),
            .init(id: 5, title: "User 5"),
            .init(id: 6, title: "User 6")
        ]
    }
}

