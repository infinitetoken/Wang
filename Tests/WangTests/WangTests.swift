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
    
    func testPseudoRandomGenerate() throws {
        let wang1 = Wang(width: 4, height: 4, collection: .corner)
        let result1 = wang1.generate(seed: 0)
        
        XCTAssertEqual(result1.map({ tile in
            tile.value
        }), [2, 6, 4, 3, 5, 11, 14, 5, 14, 7, 13, 8, 13, 9, 8, 2])
        
        let wang2 = Wang(width: 4, height: 4, collection: .corner)
        let result2 = wang2.generate(seed: 0)

        XCTAssertEqual(result2.map({ tile in
            tile.index
        }), [2, 6, 4, 3, 5, 11, 14, 5, 14, 7, 13, 8, 13, 9, 8, 2])
     
        let wang3 = Wang(width: 4, height: 4, collection: .blob)
        let result3 = wang3.generate(seed: 0)

        XCTAssertEqual(result3.map({ tile in
            tile.index
        }), [2, 6, 3, 8, 4, 10, 8, 12, 8, 13, 13, 6, 13, 13, 6, 5])
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
