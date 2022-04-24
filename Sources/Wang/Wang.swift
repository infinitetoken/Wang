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
    
    internal enum Axis {
        case horizontal
        case vertical
    }
    
    public enum Cardinal {
        case north
        case east
        case south
        case west
    }
    
    public enum Collection: String, Codable, CaseIterable {
        case blob = "Blob"
        case corner = "Corner"
        case edge = "Edge"
        
        public var name: String { return rawValue }
    }
    
    // MARK: - Structs
    
    public struct Tile: Identifiable, Equatable {
        public var index: UInt8
        public var value: UInt8
        
        public var north: UInt8
        public var east: UInt8
        public var south: UInt8
        public var west: UInt8
        
        public var rotation: Wang.Cardinal = .north
        
        public var id: UInt8 { return value }
        
        public static var zero: Tile {
            return Tile(index: 0, value: 0, north: 0, east: 0, south: 0, west: 0)
        }
    }
    
    // MARK: - Properties
    
    public var collection: Wang.Collection
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

extension Wang {
    
    public func generate(seed: UInt8? = nil) -> [Wang.Tile] {
        self.generate(seed: seed, width: self.width, height: self.height, collection: self.collection)
    }

    internal func generate(seed: UInt8?, width: UInt, height: UInt, collection: Wang.Collection) -> [Wang.Tile] {
        var tileIndexes: [Wang.Tile] = []
        
        for row in 0..<height {
            for column in 0..<width {
                let index = (row * width) + column

                var westTile: Wang.Tile? = nil
                
                if column != 0 {
                    westTile = self.tile(for: index, axis: .horizontal, width: width, in: tileIndexes)
                }
                
                let northTile = self.tile(for: index, axis: .vertical, width: width, in: tileIndexes)

                tileIndexes.append(
                    self.generateMatchingTile(
                        westTile: westTile,
                        northTile: northTile,
                        seed: seed,
                        collection: collection
                    )
                )
            }
        }
        
        return tileIndexes
    }
    
    internal func generateMatchingTile(westTile: Wang.Tile?, northTile: Wang.Tile?, seed: UInt8?, collection: Wang.Collection) -> Wang.Tile {
        if westTile == nil && northTile == nil { return collection.tiles.randomElement() ?? Tile.zero }
        
        var candidates: [Wang.Tile] = collection.tiles

        if let westTile = westTile {
            candidates = self.matchingTiles(for: westTile, axis: .horizontal, collection: collection, in: candidates)
        }
        if let northTile = northTile {
            candidates = self.matchingTiles(for: northTile, axis: .vertical, collection: collection, in: candidates)
        }

        return candidates.randomElement() ?? Wang.Tile.zero
    }
    
    internal func tile(for index: UInt, axis: Wang.Axis, width: UInt, in tileIndexes: [Wang.Tile]) -> Wang.Tile? {
        guard index > 0 else { return nil }
        
        switch axis {
        case .horizontal:
            return tileIndexes.indices.contains(Int(index) - 1) ? tileIndexes[Int(index) - 1] : nil
        case .vertical:
            return tileIndexes.indices.contains(Int(index) - Int(width)) ? tileIndexes[Int(index) - Int(width)] : nil
        }
    }
    
    internal func matchingTiles(for tile: Wang.Tile, axis: Wang.Axis, collection: Wang.Collection, in candidates: [Wang.Tile]) -> [Wang.Tile] {
        switch axis {
        case .horizontal:
            return candidates.filter { candidate in
                return candidate.west == tile.east
            }
        case .vertical:
            return candidates.filter { candidate in
                return candidate.north == tile.south
            }
        }
    }
    
}
