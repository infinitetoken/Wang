import XCTest
@testable import Wang

final class WangTests: XCTestCase {
    
    func testMatchingTiles() throws {
        let wang = Wang(width: 1, height: 1, collection: .corner)
        
        let tile = Wang.Tile(index: 0, north: 0, east: 0, south: 0, west: 0)
        let collection = Wang.Collection.corner
        let tiles = collection.tiles
        
        XCTAssertEqual(
            wang.matchingTiles(for: tile, axis: .horizontal, collection: collection, in: tiles).map({ tile in
                tile.index
            }),
            [0, 1, 2, 3]
        )
        XCTAssertEqual(
            wang.matchingTiles(for: tile, axis: .vertical, collection: collection, in: tiles).map({ tile in
                tile.index
            }),
            [0, 2, 4, 6]
        )
    }
    
}
