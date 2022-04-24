//
//  Collection+Mask.swift
//  Wang
//
//  Created by Aaron Wright on 4/23/22.
//  Copyright © 2022 Infinite Token LLC. All rights reserved.
//

import Foundation

extension Wang.Collection {
    
    internal var tiles: [Wang.Tile] {
        switch self {
        case .blob:
            return [
                Wang.Tile(index: 0, value: 0, north: 0b000, east: 0b000, south: 0b000, west: 0b000),
                
                Wang.Tile(index: 1, value: 1, north: 0b010, east: 0b000, south: 0b000, west: 0b000),
                Wang.Tile(index: 1, value: 4, north: 0b000, east: 0b010, south: 0b000, west: 0b000, rotation: .east),
                Wang.Tile(index: 1, value: 16, north: 0b000, east: 0b000, south: 0b010, west: 0b000, rotation: .south),
                Wang.Tile(index: 1, value: 64, north: 0b000, east: 0b000, south: 0b000, west: 0b010, rotation: .west),
                
                Wang.Tile(index: 2, value: 5, north: 0b010, east: 0b010, south: 0b000, west: 0b000),
                Wang.Tile(index: 2, value: 20, north: 0b000, east: 0b010, south: 0b010, west: 0b000, rotation: .east),
                Wang.Tile(index: 2, value: 80, north: 0b000, east: 0b000, south: 0b010, west: 0b010, rotation: .south),
                Wang.Tile(index: 2, value: 65, north: 0b010, east: 0b000, south: 0b000, west: 0b010, rotation: .west),
                
                Wang.Tile(index: 3, value: 7, north: 0b011, east: 0b110, south: 0b000, west: 0b000),
                Wang.Tile(index: 3, value: 28, north: 0b000, east: 0b011, south: 0b011, west: 0b000, rotation: .east),
                Wang.Tile(index: 3, value: 112, north: 0b000, east: 0b000, south: 0b110, west: 0b011, rotation: .south),
                Wang.Tile(index: 3, value: 193, north: 0b110, east: 0b000, south: 0b000, west: 0b110, rotation: .west),
                
                Wang.Tile(index: 4, value: 17, north: 0b010, east: 0b000, south: 0b010, west: 0b000),
                Wang.Tile(index: 4, value: 68, north: 0b000, east: 0b010, south: 0b000, west: 0b010, rotation: .east),
                
                Wang.Tile(index: 5, value: 21, north: 0b010, east: 0b010, south: 0b010, west: 0b000),
                Wang.Tile(index: 5, value: 84, north: 0b000, east: 0b010, south: 0b010, west: 0b010, rotation: .east),
                Wang.Tile(index: 5, value: 81, north: 0b010, east: 0b000, south: 0b010, west: 0b010, rotation: .south),
                Wang.Tile(index: 5, value: 69, north: 0b010, east: 0b010, south: 0b000, west: 0b010, rotation: .west),
                
                Wang.Tile(index: 6, value: 23, north: 0b011, east: 0b110, south: 0b010, west: 0b000),
                Wang.Tile(index: 6, value: 92, north: 0b000, east: 0b011, south: 0b011, west: 0b010, rotation: .east),
                Wang.Tile(index: 6, value: 113, north: 0b010, east: 0b000, south: 0b110, west: 0b011, rotation: .south),
                Wang.Tile(index: 6, value: 197, north: 0b110, east: 0b010, south: 0b000, west: 0b110, rotation: .west),
                
                Wang.Tile(index: 7, value: 29, north: 0b010, east: 0b011, south: 0b011, west: 0b000),
                Wang.Tile(index: 7, value: 116, north: 0b000, east: 0b010, south: 0b110, west: 0b011, rotation: .east),
                Wang.Tile(index: 7, value: 209, north: 0b110, east: 0b000, south: 0b010, west: 0b110, rotation: .south),
                Wang.Tile(index: 7, value: 71, north: 0b011, east: 0b110, south: 0b000, west: 0b010, rotation: .west),
                
                Wang.Tile(index: 8, value: 31, north: 0b011, east: 0b111, south: 0b011, west: 0b000),
                Wang.Tile(index: 8, value: 124, north: 0b000, east: 0b011, south: 0b111, west: 0b011, rotation: .east),
                Wang.Tile(index: 8, value: 241, north: 0b110, east: 0b000, south: 0b110, west: 0b111, rotation: .south),
                Wang.Tile(index: 8, value: 199, north: 0b111, east: 0b110, south: 0b000, west: 0b110, rotation: .west),
                
                Wang.Tile(index: 9, value: 85, north: 0b010, east: 0b010, south: 0b010, west: 0b010),
                
                Wang.Tile(index: 10, value: 87, north: 0b011, east: 0b110, south: 0b010, west: 0b010),
                Wang.Tile(index: 10, value: 93, north: 0b010, east: 0b011, south: 0b011, west: 0b010, rotation: .east),
                Wang.Tile(index: 10, value: 117, north: 0b010, east: 0b010, south: 0b110, west: 0b010, rotation: .south),
                Wang.Tile(index: 10, value: 213, north: 0b110, east: 0b010, south: 0b010, west: 0b110, rotation: .west),
                
                Wang.Tile(index: 11, value: 95, north: 0b011, east: 0b111, south: 0b011, west: 0b010),
                Wang.Tile(index: 11, value: 125, north: 0b010, east: 0b011, south: 0b111, west: 0b011, rotation: .east),
                Wang.Tile(index: 11, value: 245, north: 0b110, east: 0b010, south: 0b110, west: 0b111, rotation: .south),
                Wang.Tile(index: 11, value: 215, north: 0b111, east: 0b110, south: 0b010, west: 0b110, rotation: .west),
                
                Wang.Tile(index: 12, value: 119, north: 0b011, east: 0b110, south: 0b110, west: 0b011),
                Wang.Tile(index: 12, value: 221, north: 0b110, east: 0b011, south: 0b011, west: 0b110, rotation: .east),
                
                Wang.Tile(index: 13, value: 127, north: 0b011, east: 0b111, south: 0b111, west: 0b011),
                Wang.Tile(index: 13, value: 253, north: 0b110, east: 0b011, south: 0b111, west: 0b111, rotation: .east),
                Wang.Tile(index: 13, value: 247, north: 0b111, east: 0b110, south: 0b110, west: 0b111, rotation: .south),
                Wang.Tile(index: 13, value: 223, north: 0b111, east: 0b111, south: 0b011, west: 0b110, rotation: .west),
                
                Wang.Tile(index: 14, value: 255, north: 0b111, east: 0b111, south: 0b111, west: 0b111),
                
                Wang.Tile(index: 15, value: 0, north: 0b000, east: 0b000, south: 0b000, west: 0b000)
            ]
        case .corner:
            return [
                Wang.Tile(index: 0, value: 0, north: 0b00, east: 0b00, south: 0b00, west: 0b00),
                Wang.Tile(index: 1, value: 1, north: 0b01, east: 0b10, south: 0b00, west: 0b00),
                Wang.Tile(index: 2, value: 2, north: 0b00, east: 0b01, south: 0b01, west: 0b00),
                Wang.Tile(index: 3, value: 3, north: 0b01, east: 0b11, south: 0b01, west: 0b00),

                Wang.Tile(index: 4, value: 4, north: 0b00, east: 0b00, south: 0b10, west: 0b01),
                Wang.Tile(index: 5, value: 5, north: 0b01, east: 0b10, south: 0b10, west: 0b01),
                Wang.Tile(index: 6, value: 6, north: 0b00, east: 0b01, south: 0b11, west: 0b01),
                Wang.Tile(index: 7, value: 7, north: 0b01, east: 0b11, south: 0b11, west: 0b01),
                
                Wang.Tile(index: 8, value: 8, north: 0b10, east: 0b00, south: 0b00, west: 0b10),
                Wang.Tile(index: 9, value: 9, north: 0b11, east: 0b10, south: 0b00, west: 0b10),
                Wang.Tile(index: 10, value: 10, north: 0b10, east: 0b01, south: 0b01, west: 0b10),
                Wang.Tile(index: 11, value: 11, north: 0b11, east: 0b11, south: 0b01, west: 0b10),
                
                Wang.Tile(index: 12, value: 12, north: 0b10, east: 0b00, south: 0b10, west: 0b11),
                Wang.Tile(index: 13, value: 13, north: 0b11, east: 0b10, south: 0b10, west: 0b11),
                Wang.Tile(index: 14, value: 14, north: 0b10, east: 0b01, south: 0b11, west: 0b11),
                Wang.Tile(index: 15, value: 15, north: 0b11, east: 0b11, south: 0b11, west: 0b11)
            ]
        case .edge:
            return [
                Wang.Tile(index: 0, value: 0, north: 0, east: 0, south: 0, west: 0),
                Wang.Tile(index: 1, value: 1, north: 1, east: 0, south: 0, west: 0),
                Wang.Tile(index: 2, value: 2, north: 0, east: 1, south: 0, west: 0),
                Wang.Tile(index: 3, value: 3, north: 1, east: 1, south: 0, west: 0),

                Wang.Tile(index: 4, value: 4, north: 0, east: 0, south: 1, west: 0),
                Wang.Tile(index: 5, value: 5, north: 1, east: 0, south: 1, west: 0),
                Wang.Tile(index: 6, value: 6, north: 0, east: 1, south: 1, west: 0),
                Wang.Tile(index: 7, value: 7, north: 1, east: 1, south: 1, west: 0),
                
                Wang.Tile(index: 8, value: 8, north: 0, east: 0, south: 0, west: 1),
                Wang.Tile(index: 9, value: 9, north: 1, east: 0, south: 0, west: 1),
                Wang.Tile(index: 10, value: 10, north: 0, east: 1, south: 0, west: 1),
                Wang.Tile(index: 11, value: 11, north: 1, east: 1, south: 0, west: 1),
                
                Wang.Tile(index: 12, value: 12, north: 0, east: 0, south: 1, west: 1),
                Wang.Tile(index: 13, value: 13, north: 1, east: 0, south: 1, west: 1),
                Wang.Tile(index: 14, value: 14, north: 0, east: 1, south: 1, west: 1),
                Wang.Tile(index: 15, value: 15, north: 1, east: 1, south: 1, west: 1),
            ]
        }
    }
    
}
