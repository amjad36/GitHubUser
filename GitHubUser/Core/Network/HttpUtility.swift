//
//  HttpUtility.swift
//  GitHubUser
//
//  Created by Amjad Khan on 14/04/25.
//

import Foundation

protocol HttpUtilityProtocol {
    func load<T: Codable>(urlStr: String) async throws -> T
}

final class HttpUtility: HttpUtilityProtocol {
    
    func load<T: Codable>(urlStr: String) async throws -> T {
        guard let url = URL(string: urlStr) else {
            throw NetworkError.invalidUrl
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let statusCode = (response as? HTTPURLResponse)?.statusCode,
              statusCode == 200 else {
            throw NetworkError.invalidResponse
        }
        
        do {
            return try JSONDecoder().decode(T.self, from: data)
        }
        catch {
            throw NetworkError.invalidData
        }
    }
}
