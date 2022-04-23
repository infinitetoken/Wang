//
//  Wang+Generator.swift
//  Wang
//
//  Created by Aaron Wright on 4/23/22.
//  Copyright © 2022 Infinite Token LLC. All rights reserved.
//

import Foundation

extension Wang {
    
    public func generate(seed: UInt8? = nil) -> [UInt8] {
        self.generate(seed: seed, width: self.width, height: self.height, collection: self.collection)
    }

    internal func generate(seed: UInt8?, width: UInt, height: UInt, collection: Collection) -> [UInt8] {
        var tileIndexes: [UInt8] = []
        
        for row in 0..<height {
            for column in 0..<width {
                let index = (row * width) + column

                let westValue = self.tileValue(for: index, axis: .horizontal, width: width, in: tileIndexes)
                let northValue = self.tileValue(for: index, axis: .vertical, width: width, in: tileIndexes)

                tileIndexes.append(self.generateMatchingValue(westValue: westValue, northValue: northValue, seed: seed, collection: collection))
            }
        }
        
        return tileIndexes
    }
    
    internal func generateMatchingValue(westValue: UInt8?, northValue: UInt8?, seed: UInt8?, collection: Collection) -> UInt8 {
        switch collection {
        case .blob:
            return 0
        case .corner:
            return 0
        case .edge:
            if westValue == nil && northValue == nil { return (0..<16).randomElement() ?? 0 }
            
            var candidates: [UInt8] = Array(0..<16)
    
            if let westValue = westValue {
                candidates = self.matchingValues(for: westValue, axis: .horizontal, collection: collection, in: candidates)
            }
            if let northValue = northValue {
                candidates = self.matchingValues(for: northValue, axis: .vertical, collection: collection, in: candidates)
            }
    
            return candidates.randomElement() ?? 0
        }
    }
    
    internal func tileValue(for index: UInt, axis: Axis, width: UInt, in tileIndexes: [UInt8]) -> UInt8? {
        guard index > 0 else { return nil }
        
        switch axis {
        case .horizontal:
            return tileIndexes.indices.contains(Int(index) - 1) ? tileIndexes[Int(index) - 1] : nil
        case .vertical:
            return tileIndexes.indices.contains(Int(index) - Int(width)) ? tileIndexes[Int(index) - Int(width)] : nil
        }
    }
    
    internal func matchingValues(for value: UInt8, axis: Axis, collection: Collection, in values: [UInt8]) -> [UInt8] {
        switch axis {
        case .horizontal:
            switch collection {
            case .blob:
                return []
            case .corner:
                return []
            case .edge:
                guard let eastMask = Cardinal.east.mask(for: .edge) else { return [] }
                guard let westMask = Cardinal.west.mask(for: .edge) else { return [] }
                
                return values.filter { value in
                    if (value & eastMask) == eastMask {
                        return (value & westMask) != westMask
                    } else {
                        return (value & westMask) == westMask
                    }
                }
            }
        case .vertical:
            switch collection {
            case .blob:
                return []
            case .corner:
                return []
            case .edge:
                guard let southMask = Cardinal.south.mask(for: .edge) else { return [] }
                guard let northMask = Cardinal.north.mask(for: .edge) else { return [] }
                
                return values.filter { value in
                    if (value & southMask) == southMask {
                        return (value & northMask) != northMask
                    } else {
                        return (value & northMask) == northMask
                    }
                }
            }
        }
    }
    
//    internal func filteredValues(collection: Collection, matchingValue: UInt8, cardinal: Cardinal, in values: [UInt8]) -> [UInt8] {
//        guard let directionMask = cardinal.mask(for: style) else { return [] }
//        guard let reversedMask = cardinal.reversed.mask(for: style) else { return [] }
//
//        let candidates = values.filter { value in
//            if (matchingValue & directionMask) == directionMask {
//                return (value & reversedMask) != reversedMask
//            } else {
//                return (value & reversedMask) == reversedMask
//            }
//        }
//
//        return candidates
//    }

//
    
}
