import XCTest
@testable import Wang

final class WangTests: XCTestCase {
    
    func testGenerate() throws {
        let wang1 = Wang(width: 4, height: 4, collection: .corner)
        let result1 = wang1.generate()
        
        XCTAssertEqual(result1.count, 16)
        
        let wang2 = Wang(width: 2, height: 2, collection: .edge)
        let result2 = wang2.generate()
        
        XCTAssertEqual(result2.count, 4)
        
        let wang3 = Wang(width: 8, height: 8, collection: .blob)
        let result3 = wang3.generate()
        
        XCTAssertEqual(result3.count, 64)
    }
    
    func testPsuedoRandomGenerate() throws {
        let wang1 = Wang(width: 4, height: 4, collection: .edge)
        let result1 = wang1.generate(seed: Int.random(in: 0..<244444))
        
        XCTAssertEqual(result1.map({ tile in
            tile.value
        }), [0, 1, 2, 8])
//        
//        let wang2 = Wang(width: 4, height: 4, collection: .corner, seed: 0)
//        let result2 = wang2.generate()
//
//        XCTAssertEqual(result2.map({ tile in
//            tile.index
//        }), [0, 1, 8, 0, 2, 4, 0, 2, 3, 12, 0, 1, 3, 12, 0, 2])
//        
//        let wang3 = Wang(width: 6, height: 6, collection: .blob, seed: 0)
//        let result3 = wang3.generate()
//
//        XCTAssertEqual(result3.map({ tile in
//            tile.index
//        }), [0, 1, 2, 6, 3, 15, 0, 1, 4, 7, 3, 15, 0, 1, 4, 1, 15, 0, 1, 4, 1, 15, 0, 1, 3, 3, 15, 0, 1, 4, 3, 10, 1, 15, 0, 1])
    }
    
    func testZeroTile() throws {
        let tile = Wang.Tile.zero
        
        XCTAssertEqual(tile.index, 0)
        XCTAssertEqual(tile.value, 0)
        XCTAssertEqual(tile.north, 0)
        XCTAssertEqual(tile.east, 0)
        XCTAssertEqual(tile.south, 0)
        XCTAssertEqual(tile.west, 0)
        XCTAssertEqual(tile.id, 0)
    }
    
    func testCollectionName() throws {
        XCTAssertEqual(Wang.Collection.blob.name, "Blob")
        XCTAssertEqual(Wang.Collection.corner.name, "Corner")
        XCTAssertEqual(Wang.Collection.edge.name, "Edge")
    }
    
}
