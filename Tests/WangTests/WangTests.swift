import XCTest
@testable import Wang

final class WangTests: XCTestCase {
    
    func testMatchingValues() throws {
        let wang = Wang(width: 1, height: 1, collection: .edge)
        let candidates: [UInt8] = Array(0..<16)
        
        let matches = wang.matchingValues(for: 7, axis: .horizontal, collection: .edge, in: candidates)
        
        XCTAssertEqual(matches, [8, 9, 10, 11, 12, 13, 14, 15])
    }
    
    func testCardinalHorizontalFlipped() throws {
        
        // Blob Set
        XCTAssertEqual(Wang.Cardinal.northwest.flipped(axis: .horizontal, for: .blob), .northeast)
        XCTAssertEqual(Wang.Cardinal.northeast.flipped(axis: .horizontal, for: .blob), .northwest)
        XCTAssertEqual(Wang.Cardinal.east.flipped(axis: .horizontal, for: .blob), .west)
        XCTAssertEqual(Wang.Cardinal.southeast.flipped(axis: .horizontal, for: .blob), .southwest)
        XCTAssertEqual(Wang.Cardinal.southwest.flipped(axis: .horizontal, for: .blob), .southeast)
        XCTAssertEqual(Wang.Cardinal.west.flipped(axis: .horizontal, for: .blob), .east)
        XCTAssertNil(Wang.Cardinal.north.flipped(axis: .horizontal, for: .blob))
        XCTAssertNil(Wang.Cardinal.south.flipped(axis: .horizontal, for: .blob))
        
        // Corner Set
        XCTAssertEqual(Wang.Cardinal.northwest.flipped(axis: .horizontal, for: .corner), .northeast)
        XCTAssertEqual(Wang.Cardinal.northeast.flipped(axis: .horizontal, for: .corner), .northwest)
        XCTAssertEqual(Wang.Cardinal.southeast.flipped(axis: .horizontal, for: .corner), .southwest)
        XCTAssertEqual(Wang.Cardinal.southwest.flipped(axis: .horizontal, for: .corner), .southeast)
        XCTAssertNil(Wang.Cardinal.east.flipped(axis: .horizontal, for: .corner))
        XCTAssertNil(Wang.Cardinal.west.flipped(axis: .horizontal, for: .corner))
        XCTAssertNil(Wang.Cardinal.north.flipped(axis: .horizontal, for: .corner))
        XCTAssertNil(Wang.Cardinal.south.flipped(axis: .horizontal, for: .corner))
        
        // Edge Set
        XCTAssertEqual(Wang.Cardinal.east.flipped(axis: .horizontal, for: .edge), .west)
        XCTAssertEqual(Wang.Cardinal.west.flipped(axis: .horizontal, for: .edge), .east)
        XCTAssertNil(Wang.Cardinal.northwest.flipped(axis: .horizontal, for: .edge))
        XCTAssertNil(Wang.Cardinal.northeast.flipped(axis: .horizontal, for: .edge))
        XCTAssertNil(Wang.Cardinal.southeast.flipped(axis: .horizontal, for: .edge))
        XCTAssertNil(Wang.Cardinal.southwest.flipped(axis: .horizontal, for: .edge))
        XCTAssertNil(Wang.Cardinal.north.flipped(axis: .horizontal, for: .edge))
        XCTAssertNil(Wang.Cardinal.south.flipped(axis: .horizontal, for: .edge))
    }
    
    func testCardinalVerticalFlipped() throws {
        
        // Blob Set
        XCTAssertEqual(Wang.Cardinal.northwest.flipped(axis: .vertical, for: .blob), .southwest)
        XCTAssertEqual(Wang.Cardinal.northeast.flipped(axis: .vertical, for: .blob), .southeast)
        XCTAssertEqual(Wang.Cardinal.north.flipped(axis: .vertical, for: .blob), .south)
        XCTAssertEqual(Wang.Cardinal.southeast.flipped(axis: .vertical, for: .blob), .northeast)
        XCTAssertEqual(Wang.Cardinal.southwest.flipped(axis: .vertical, for: .blob), .northwest)
        XCTAssertEqual(Wang.Cardinal.south.flipped(axis: .vertical, for: .blob), .north)
        XCTAssertNil(Wang.Cardinal.east.flipped(axis: .vertical, for: .blob))
        XCTAssertNil(Wang.Cardinal.west.flipped(axis: .vertical, for: .blob))
        
        // Corner Set
        XCTAssertEqual(Wang.Cardinal.northwest.flipped(axis: .vertical, for: .corner), .southwest)
        XCTAssertEqual(Wang.Cardinal.northeast.flipped(axis: .vertical, for: .corner), .southeast)
        XCTAssertEqual(Wang.Cardinal.southeast.flipped(axis: .vertical, for: .corner), .northeast)
        XCTAssertEqual(Wang.Cardinal.southwest.flipped(axis: .vertical, for: .corner), .northwest)
        XCTAssertNil(Wang.Cardinal.east.flipped(axis: .vertical, for: .corner))
        XCTAssertNil(Wang.Cardinal.west.flipped(axis: .vertical, for: .corner))
        XCTAssertNil(Wang.Cardinal.north.flipped(axis: .vertical, for: .corner))
        XCTAssertNil(Wang.Cardinal.south.flipped(axis: .vertical, for: .corner))
        
        // Edge Set
        XCTAssertEqual(Wang.Cardinal.north.flipped(axis: .vertical, for: .edge), .south)
        XCTAssertEqual(Wang.Cardinal.south.flipped(axis: .vertical, for: .edge), .north)
        XCTAssertNil(Wang.Cardinal.northwest.flipped(axis: .vertical, for: .edge))
        XCTAssertNil(Wang.Cardinal.northeast.flipped(axis: .vertical, for: .edge))
        XCTAssertNil(Wang.Cardinal.southeast.flipped(axis: .vertical, for: .edge))
        XCTAssertNil(Wang.Cardinal.southwest.flipped(axis: .vertical, for: .edge))
        XCTAssertNil(Wang.Cardinal.east.flipped(axis: .vertical, for: .edge))
        XCTAssertNil(Wang.Cardinal.west.flipped(axis: .vertical, for: .edge))
    }
    
    func testCardinalMask() throws {
        
        // Blob Set
        XCTAssertEqual(Wang.Cardinal.north.mask(for: .blob), 1)
        XCTAssertEqual(Wang.Cardinal.northeast.mask(for: .blob), 2)
        XCTAssertEqual(Wang.Cardinal.east.mask(for: .blob), 4)
        XCTAssertEqual(Wang.Cardinal.southeast.mask(for: .blob), 8)
        XCTAssertEqual(Wang.Cardinal.south.mask(for: .blob), 16)
        XCTAssertEqual(Wang.Cardinal.southwest.mask(for: .blob), 32)
        XCTAssertEqual(Wang.Cardinal.west.mask(for: .blob), 64)
        XCTAssertEqual(Wang.Cardinal.northwest.mask(for: .blob), 128)
        
        // Corner Set
        XCTAssertNil(Wang.Cardinal.north.mask(for: .corner))
        XCTAssertEqual(Wang.Cardinal.northeast.mask(for: .corner), 1)
        XCTAssertNil(Wang.Cardinal.east.mask(for: .corner))
        XCTAssertEqual(Wang.Cardinal.southeast.mask(for: .corner), 2)
        XCTAssertNil(Wang.Cardinal.south.mask(for: .corner))
        XCTAssertEqual(Wang.Cardinal.southwest.mask(for: .corner), 4)
        XCTAssertNil(Wang.Cardinal.west.mask(for: .corner))
        XCTAssertEqual(Wang.Cardinal.northwest.mask(for: .corner), 8)
        
        // Edge Set
        XCTAssertEqual(Wang.Cardinal.north.mask(for: .edge), 1)
        XCTAssertNil(Wang.Cardinal.northeast.mask(for: .edge))
        XCTAssertEqual(Wang.Cardinal.east.mask(for: .edge), 2)
        XCTAssertNil(Wang.Cardinal.southeast.mask(for: .edge))
        XCTAssertEqual(Wang.Cardinal.south.mask(for: .edge), 4)
        XCTAssertNil(Wang.Cardinal.southwest.mask(for: .edge))
        XCTAssertEqual(Wang.Cardinal.west.mask(for: .edge), 8)
        XCTAssertNil(Wang.Cardinal.northwest.mask(for: .edge))
    }
    
}
