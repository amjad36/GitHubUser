//
//  GitUser.swift
//  GitHubUser
//
//  Created by Amjad Khan on 14/04/25.
//

import Foundation

struct GitUser: Codable {
    let id: Int
    let name: String
    let username: String
    let photo: URL
}
