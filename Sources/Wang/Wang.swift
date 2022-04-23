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
    
    internal enum Cardinal {
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
    
    internal struct Tile: Identifiable, Equatable {
        var index: UInt8
        
        var north: UInt8
        var east: UInt8
        var south: UInt8
        var west: UInt8
        
        var id: UInt8 { return index }
        
        func value(for cardinal: Cardinal) -> UInt8 {
            switch cardinal {
            case .north:
                return north
            case .east:
                return east
            case .south:
                return south
            case .west:
                return west
            }
        }
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

extension Wang {
    
    public func generate(seed: UInt8? = nil) -> [UInt8] {
        self.generate(seed: seed, width: self.width, height: self.height, collection: self.collection)
    }

    internal func generate(seed: UInt8?, width: UInt, height: UInt, collection: Collection) -> [UInt8] {
        var tileIndexes: [Tile] = []
        
        for row in 0..<height {
            for column in 0..<width {
                let index = (row * width) + column

                var westTile: Tile? = nil
                
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
        
        return tileIndexes.map { tile in
            tile.index
        }
    }
    
    internal func generateMatchingTile(westTile: Tile?, northTile: Tile?, seed: UInt8?, collection: Collection) -> Tile {
        if westTile == nil && northTile == nil { return collection.tiles.randomElement() ?? Tile(index: 0, north: 0, east: 0, south: 0, west: 0) }
        
        var candidates: [Tile] = collection.tiles

        if let westTile = westTile {
            candidates = self.matchingTiles(for: westTile, axis: .horizontal, collection: collection, in: candidates)
        }
        if let northTile = northTile {
            candidates = self.matchingTiles(for: northTile, axis: .vertical, collection: collection, in: candidates)
        }

        return candidates.randomElement() ?? Tile(index: 0, north: 0, east: 0, south: 0, west: 0)
    }
    
    internal func tile(for index: UInt, axis: Axis, width: UInt, in tileIndexes: [Tile]) -> Tile? {
        guard index > 0 else { return nil }
        
        switch axis {
        case .horizontal:
            return tileIndexes.indices.contains(Int(index) - 1) ? tileIndexes[Int(index) - 1] : nil
        case .vertical:
            return tileIndexes.indices.contains(Int(index) - Int(width)) ? tileIndexes[Int(index) - Int(width)] : nil
        }
    }
    
    internal func matchingTiles(for tile: Tile, axis: Axis, collection: Collection, in candidates: [Tile]) -> [Tile] {
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
