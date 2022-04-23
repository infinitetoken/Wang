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
            return []
        case .corner:
            return [
                Wang.Tile(index: 0, north: 0b00, east: 0b00, south: 0b00, west: 0b00),
                Wang.Tile(index: 1, north: 0b01, east: 0b10, south: 0b00, west: 0b00),
                Wang.Tile(index: 2, north: 0b00, east: 0b01, south: 0b10, west: 0b00),
                Wang.Tile(index: 3, north: 0b01, east: 0b11, south: 0b01, west: 0b00),

                Wang.Tile(index: 4, north: 0b00, east: 0b00, south: 0b10, west: 0b01),
                Wang.Tile(index: 5, north: 0b01, east: 0b10, south: 0b10, west: 0b01),
                Wang.Tile(index: 6, north: 0b00, east: 0b01, south: 0b11, west: 0b01),
                Wang.Tile(index: 7, north: 0b01, east: 0b11, south: 0b11, west: 0b01),
                
                Wang.Tile(index: 8, north: 0b10, east: 0b00, south: 0b00, west: 0b10),
                Wang.Tile(index: 9, north: 0b11, east: 0b10, south: 0b00, west: 0b10),
                Wang.Tile(index: 10, north: 0b10, east: 0b01, south: 0b01, west: 0b10),
                Wang.Tile(index: 11, north: 0b11, east: 0b11, south: 0b01, west: 0b10),
                
                Wang.Tile(index: 12, north: 0b10, east: 0b00, south: 0b10, west: 0b11),
                Wang.Tile(index: 13, north: 0b11, east: 0b10, south: 0b10, west: 0b11),
                Wang.Tile(index: 14, north: 0b10, east: 0b01, south: 0b11, west: 0b11),
                Wang.Tile(index: 15, north: 0b11, east: 0b11, south: 0b11, west: 0b11)
            ]
        case .edge:
            return [
                Wang.Tile(index: 0, north: 0, east: 0, south: 0, west: 0),
                Wang.Tile(index: 1, north: 1, east: 0, south: 0, west: 0),
                Wang.Tile(index: 2, north: 0, east: 1, south: 0, west: 0),
                Wang.Tile(index: 3, north: 1, east: 1, south: 0, west: 0),

                Wang.Tile(index: 4, north: 0, east: 0, south: 1, west: 0),
                Wang.Tile(index: 5, north: 1, east: 0, south: 1, west: 0),
                Wang.Tile(index: 6, north: 0, east: 1, south: 1, west: 0),
                Wang.Tile(index: 7, north: 1, east: 1, south: 1, west: 0),
                
                Wang.Tile(index: 8, north: 0, east: 0, south: 0, west: 1),
                Wang.Tile(index: 9, north: 1, east: 0, south: 0, west: 1),
                Wang.Tile(index: 10, north: 0, east: 1, south: 0, west: 1),
                Wang.Tile(index: 11, north: 1, east: 1, south: 0, west: 1),
                
                Wang.Tile(index: 12, north: 0, east: 0, south: 1, west: 1),
                Wang.Tile(index: 13, north: 1, east: 0, south: 1, west: 1),
                Wang.Tile(index: 14, north: 0, east: 1, south: 1, west: 1),
                Wang.Tile(index: 15, north: 1, east: 1, south: 1, west: 1),
            ]
        }
    }
    
}
