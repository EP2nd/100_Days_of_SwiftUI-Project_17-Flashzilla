//
//  Card.swift
//  Flashzilla
//
//  Created by Edwin Przeźwiecki Jr. on 20/02/2023.
//

import Foundation

/// Challenge 3:
struct Card: Codable, Identifiable, /*Equatable*/ Hashable {
    
    var id = UUID()
    let prompt: String
    let answer: String
    
    static let example = Card(prompt: "Who played the 13th Doctor in Doctor Who?", answer: "Jodie Whittaker")
}
