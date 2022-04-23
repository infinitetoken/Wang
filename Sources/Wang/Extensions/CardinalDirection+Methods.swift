//
//  File.swift
//  
//
//  Created by Aaron Wright on 4/23/22.
//

import Foundation

extension Wang.CardinalDirection {
    
    public var reversed: Wang.CardinalDirection {
        switch self {
        case .north:
            return .south
        case .northeast:
            return .southwest
        case .east:
            return .west
        case .southeast:
            return .northwest
        case .south:
            return .north
        case .southwest:
            return .northeast
        case .west:
            return .east
        case .northwest:
            return .southeast
        }
    }
    
    public func mask(for collection: Wang.Collection) -> UInt8? {
        switch self {
        case .north:
            switch collection {
            case .blob:
                return 0b00000001
            case .corner:
                return nil
            case .edge:
                return 0b00000001
            }
        case .northeast:
            switch collection {
            case .blob:
                return 0b00000010
            case .corner:
                return 0b00000001
            case .edge:
                return nil
            }
        case .east:
            switch collection {
            case .blob:
                return 0b00000100
            case .corner:
                return nil
            case .edge:
                return 0b00000010
            }
        case .southeast:
            switch collection {
            case .blob:
                return 0b00001000
            case .corner:
                return 0b00000010
            case .edge:
                return nil
            }
        case .south:
            switch collection {
            case .blob:
                return 0b00010000
            case .corner:
                return nil
            case .edge:
                return 0b00000100
            }
        case .southwest:
            switch collection {
            case .blob:
                return 0b00100000
            case .corner:
                return 0b00000100
            case .edge:
                return nil
            }
        case .west:
            switch collection {
            case .blob:
                return 0b01000000
            case .corner:
                return nil
            case .edge:
                return 0b00001000
            }
        case .northwest:
            switch collection {
            case .blob:
                return 0b10000000
            case .corner:
                return 0b00001000
            case .edge:
                return nil
            }
        }
    }
    
}
