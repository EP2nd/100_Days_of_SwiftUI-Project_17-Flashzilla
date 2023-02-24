//
//  DataManager.swift
//  Flashzilla
//
//  Created by Edwin Przeźwiecki Jr. on 24/02/2023.
//

/// Bonus challenges:

import Foundation

struct DataManager {
    
    static let savePath = FileManager.documentsDirectory.appendingPathExtension("Flashzilla")
    
    static func save<T: Codable>(data: [T]) {
        if let encoded = try? JSONEncoder().encode(data) {
            try? encoded.write(to: savePath, options: [.atomic, .completeFileProtection])
        }
    }
    
    static func load() -> [Card] {
        if let data = try? Data(contentsOf: savePath) {
            if let decoded = try? JSONDecoder().decode([Card].self, from: data) {
                return decoded
            }
        }
        
        return []
    }
}
