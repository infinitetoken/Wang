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
        return []
    }
    
//    mutating func generateTileIndexes() {
//        let width = Wang.previewSize.width.integerValue
//        let height = Wang.previewSize.height.integerValue
//
//        switch self.style {
//        case .blob:
//            self.tileIndexes = self.generateBlobIndexes(width: width, height: height)
//        case .corner:
//            self.tileIndexes = self.generateCornerIndexes(width: width, height: height)
//        case .edge:
//            self.tileIndexes = self.generateEdgeIndexes(width: width, height: height)
//        }
//    }
//
//    private func generateBlobIndexes(width: Int, height: Int) -> [UInt8] {
//        // TODO: Generate random tile indexes
//
//        return Array(
//            repeating: 0,
//            count: Wang.previewSize.width.integerValue * Wang.previewSize.height.integerValue
//        )
//    }
//
//    private func generateCornerIndexes(width: Int, height: Int) -> [UInt8] {
//        var tileIndexes: [UInt8] = []
//
//        for row in 0..<Wang.previewSize.height.integerValue {
//            for column in 0..<Wang.previewSize.width.integerValue {
//                let index = (row * Wang.previewSize.width.integerValue) + column
//
//                let westValue = self.tileValue(for: index, direction: .west, in: tileIndexes)
//                let northValue = self.tileValue(for: index, direction: .north, in: tileIndexes)
//
//                tileIndexes.append(self.randomCornerValue(west: westValue, north: northValue))
//            }
//        }
//
//        return tileIndexes
//    }
//
//    private func generateEdgeIndexes(width: Int, height: Int) -> [UInt8] {
//        var tileIndexes: [UInt8] = []
//
//        for row in 0..<Wang.previewSize.height.integerValue {
//            for column in 0..<Wang.previewSize.width.integerValue {
//                let index = (row * Wang.previewSize.width.integerValue) + column
//
//                let westValue = self.tileValue(for: index, direction: .west, in: tileIndexes)
//                let northValue = self.tileValue(for: index, direction: .north, in: tileIndexes)
//
//                tileIndexes.append(self.randomEdgeValue(west: westValue, north: northValue))
//            }
//        }
//
//        return tileIndexes
//    }
    
}

// MARK: - Helpers

extension Wang {
    
//    private func tileValue(for index: Int, direction: Direction, in tileIndexes: [UInt8]) -> UInt8? {
//        var tileIndex: Int
//
//        switch direction {
//        case .north:
//            tileIndex = index - Wang.previewSize.width.integerValue
//        case .northeast:
//            tileIndex = index - Wang.previewSize.width.integerValue + 1
//        case .east:
//            tileIndex = index + 1
//        case .southeast:
//            tileIndex = index + Wang.previewSize.width.integerValue + 1
//        case .south:
//            tileIndex = index + Wang.previewSize.width.integerValue
//        case .southwest:
//            tileIndex = index + Wang.previewSize.width.integerValue - 1
//        case .west:
//            tileIndex = index - 1
//        case .northwest:
//            tileIndex = index - Wang.previewSize.width.integerValue - 1
//        }
//
//        if tileIndexes.indices.contains(tileIndex) {
//            return tileIndexes[tileIndex]
//        } else {
//            return nil
//        }
//    }
//
//    private func randomCornerValue(west: UInt8?, north: UInt8?) -> UInt8 {
//        if west == nil && north == nil { return 11 }//(0..<16).randomElement() ?? 0 }
//
//        var candidates: [UInt8] = Array(0..<16)
//
//        if let west = west {
//            let northeastCandidates = self.filteredValues(style: .corner, matching: west, direction: .southeast, in: candidates)
//            let southeastCandidates = self.filteredValues(style: .corner, matching: west, direction: .southwest, in: candidates)
//
//            candidates = northeastCandidates.filter(southeastCandidates.contains)
//        }
//        if let north = north {
//            candidates = self.filteredValues(style: .corner, matching: north, direction: .northeast, in: candidates)
//        }
//
//        return candidates.randomElement() ?? 0
//    }
//
//    private func randomEdgeValue(west: UInt8?, north: UInt8?) -> UInt8 {
//        if west == nil && north == nil { return (0..<16).randomElement() ?? 0 }
//
//        var candidates: [UInt8] = Array(0..<16)
//
//        if let west = west {
//            candidates = self.filteredValues(style: .edge, matching: west, direction: .east, in: candidates)
//        }
//        if let north = north {
//            candidates = self.filteredValues(style: .edge, matching: north, direction: .south, in: candidates)
//        }
//
//        return candidates.randomElement() ?? 0
//    }
//
//    private func filteredValues(style: Style, matching: UInt8, direction: Direction, in values: [UInt8]) -> [UInt8] {
//        guard let directionMask = direction.mask(for: style) else { return [] }
//        guard let reversedMask = direction.reversed.mask(for: style) else { return [] }
//
//        let candidates = values.filter { value in
//            if (matching & directionMask) == directionMask {
//                return (value & reversedMask) != reversedMask
//            } else {
//                return (value & reversedMask) == reversedMask
//            }
//        }
//
//        return candidates
//    }
    
}
