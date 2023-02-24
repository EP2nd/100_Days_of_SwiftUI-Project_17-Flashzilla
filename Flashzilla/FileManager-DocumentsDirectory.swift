//
//  FileManager-DocumentsDirectory.swift
//  Flashzilla
//
//  Created by Edwin Przeźwiecki Jr. on 23/02/2023.
//

/// Bonus challenges:

import Foundation

extension FileManager {
    static var documentsDirectory: URL {
        self.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
    }
}
