//
//  Wang.swift
//  Wang
//
//  Created by Aaron Wright on 4/23/22.
//  Copyright © 2022 Infinite Token LLC. All rights reserved.
//

import Foundation

public struct Wang: Identifiable, Equatable, Codable {
    
    // MARK: - Enumerations
    
    public enum CardinalDirection: UInt8 {
        case north = 1
        case northeast = 2
        case east = 4
        case southeast = 8
        case south = 16
        case southwest = 32
        case west = 64
        case northwest = 128
        
        public var value: UInt8 { return rawValue }
    }
    
    public enum Collection: String, Codable, CaseIterable {
        case blob = "Blob"
        case corner = "Corner"
        case edge = "Edge"
        
        public var name: String { return rawValue }
    }
    
    // MARK: - Properties
    
    public var collection: Collection
    public var height: UInt
    public var id: UUID = UUID()
    public var width: UInt
    
    // MARK: - Lifecycle
    
    public init(width: UInt, height: UInt, collection: Wang.Collection) {
        self.collection = collection
        self.height = height
        self.width = width
    }
    
}
