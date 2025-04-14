//
//  NetworkError.swift
//  GitHubUser
//
//  Created by Amjad Khan on 14/04/25.
//

import Foundation

enum NetworkError: Error {
    case invalidUrl
    case invalidResponse
    case invalidData
}
