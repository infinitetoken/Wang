//
//  Cardinal+Methods.swift
//  Wang
//
//  Created by Aaron Wright on 4/23/22.
//  Copyright © 2022 Infinite Token LLC. All rights reserved.
//

import Foundation

extension Wang.Cardinal {
    
    internal func mask(for collection: Wang.Collection) -> UInt8? {
        switch self {
        case .north:
            switch collection {
            case .blob:
                return self.value
            case .corner:
                return nil
            case .edge:
                return 1
            }
        case .northeast:
            switch collection {
            case .blob:
                return self.value
            case .corner:
                return 1
            case .edge:
                return nil
            }
        case .east:
            switch collection {
            case .blob:
                return self.value
            case .corner:
                return nil
            case .edge:
                return 2
            }
        case .southeast:
            switch collection {
            case .blob:
                return self.value
            case .corner:
                return 2
            case .edge:
                return nil
            }
        case .south:
            switch collection {
            case .blob:
                return self.value
            case .corner:
                return nil
            case .edge:
                return 4
            }
        case .southwest:
            switch collection {
            case .blob:
                return self.value
            case .corner:
                return 4
            case .edge:
                return nil
            }
        case .west:
            switch collection {
            case .blob:
                return self.value
            case .corner:
                return nil
            case .edge:
                return 8
            }
        case .northwest:
            switch collection {
            case .blob:
                return self.value
            case .corner:
                return 8
            case .edge:
                return nil
            }
        }
    }
    
    internal func flipped(axis: Wang.Axis, for collection: Wang.Collection) -> Wang.Cardinal? {
        switch axis {
        case .horizontal:
            switch self {
            case .northwest:
                switch collection {
                case .blob:
                    return .northeast
                case .corner:
                    return .northeast
                case .edge:
                    return nil
                }
            case .northeast:
                switch collection {
                case .blob:
                    return .northwest
                case .corner:
                    return .northwest
                case .edge:
                    return nil
                }
            case .east:
                switch collection {
                case .blob:
                    return .west
                case .corner:
                    return nil
                case .edge:
                    return .west
                }
            case .southeast:
                switch collection {
                case .blob:
                    return .southwest
                case .corner:
                    return .southwest
                case .edge:
                    return nil
                }
            case .southwest:
                switch collection {
                case .blob:
                    return .southeast
                case .corner:
                    return .southeast
                case .edge:
                    return nil
                }
            case .west:
                switch collection {
                case .blob:
                    return .east
                case .corner:
                    return nil
                case .edge:
                    return .east
                }
            default:
                return nil
            }
        case .vertical:
            switch self {
            case .northwest:
                switch collection {
                case .blob:
                    return .southwest
                case .corner:
                    return .southwest
                case .edge:
                    return nil
                }
            case .north:
                switch collection {
                case .blob:
                    return .south
                case .corner:
                    return nil
                case .edge:
                    return .south
                }
            case .northeast:
                switch collection {
                case .blob:
                    return .southeast
                case .corner:
                    return .southeast
                case .edge:
                    return nil
                }
            case .southeast:
                switch collection {
                case .blob:
                    return .northeast
                case .corner:
                    return .northeast
                case .edge:
                    return nil
                }
            case .south:
                switch collection {
                case .blob:
                    return .north
                case .corner:
                    return nil
                case .edge:
                    return .north
                }
            case .southwest:
                switch collection {
                case .blob:
                    return .northwest
                case .corner:
                    return .northwest
                case .edge:
                    return nil
                }
            default:
                return nil
            }
        }
    }
    
}
