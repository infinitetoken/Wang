import XCTest
@testable import Wang

final class WangTests: XCTestCase {
    
    func testGenerate() throws {
//        let wang = Wang(width: 8, height: 4, collection: .corner)
//
//        let result = wang.generate()
        
        //XCTAssertEqual(result, [])
        
        // 13, 10, 4,  2, 7, 12, 1, 8,
        // 0,  1,  10, 0, 0, 0,  0, 0,
        // 0,  2,  7,  0, 0, 2,  6, 6,
        // 4,  0,  0,  0, 0, 0,  0, 0
        
    }
    
    func testMatchingHorizontalCornerTiles() throws {
        let wang = Wang(width: 1, height: 1, collection: .corner)
        
        let tiles = wang.collection.tiles
        
        XCTAssertEqual(
            wang.matchingTiles(
                for: tiles[0],
                axis: .horizontal,
                collection: wang.collection,
                in: tiles
            ).map({ tile in
                tile.index
            }),
            [0, 1, 2, 3]
        )
        XCTAssertEqual(
            wang.matchingTiles(
                for: tiles[1],
                axis: .horizontal,
                collection: wang.collection,
                in: tiles
            ).map({ tile in
                tile.index
            }),
            [8, 9, 10, 11]
        )
        XCTAssertEqual(
            wang.matchingTiles(
                for: tiles[2],
                axis: .horizontal,
                collection: wang.collection,
                in: tiles
            ).map({ tile in
                tile.index
            }),
            [4, 5, 6, 7]
        )
        XCTAssertEqual(
            wang.matchingTiles(
                for: tiles[3],
                axis: .horizontal,
                collection: wang.collection,
                in: tiles
            ).map({ tile in
                tile.index
            }),
            [12, 13, 14, 15]
        )
        XCTAssertEqual(
            wang.matchingTiles(
                for: tiles[4],
                axis: .horizontal,
                collection: wang.collection,
                in: tiles
            ).map({ tile in
                tile.index
            }),
            [0, 1, 2, 3]
        )
        XCTAssertEqual(
            wang.matchingTiles(
                for: tiles[5],
                axis: .horizontal,
                collection: wang.collection,
                in: tiles
            ).map({ tile in
                tile.index
            }),
            [8, 9, 10, 11]
        )
        XCTAssertEqual(
            wang.matchingTiles(
                for: tiles[6],
                axis: .horizontal,
                collection: wang.collection,
                in: tiles
            ).map({ tile in
                tile.index
            }),
            [4, 5, 6, 7]
        )
        XCTAssertEqual(
            wang.matchingTiles(
                for: tiles[7],
                axis: .horizontal,
                collection: wang.collection,
                in: tiles
            ).map({ tile in
                tile.index
            }),
            [12, 13, 14, 15]
        )
        XCTAssertEqual(
            wang.matchingTiles(
                for: tiles[8],
                axis: .horizontal,
                collection: wang.collection,
                in: tiles
            ).map({ tile in
                tile.index
            }),
            [0, 1, 2, 3]
        )
        XCTAssertEqual(
            wang.matchingTiles(
                for: tiles[9],
                axis: .horizontal,
                collection: wang.collection,
                in: tiles
            ).map({ tile in
                tile.index
            }),
            [8, 9, 10, 11]
        )
        XCTAssertEqual(
            wang.matchingTiles(
                for: tiles[10],
                axis: .horizontal,
                collection: wang.collection,
                in: tiles
            ).map({ tile in
                tile.index
            }),
            [4, 5, 6, 7]
        )
        XCTAssertEqual(
            wang.matchingTiles(
                for: tiles[11],
                axis: .horizontal,
                collection: wang.collection,
                in: tiles
            ).map({ tile in
                tile.index
            }),
            [12, 13, 14, 15]
        )
        XCTAssertEqual(
            wang.matchingTiles(
                for: tiles[12],
                axis: .horizontal,
                collection: wang.collection,
                in: tiles
            ).map({ tile in
                tile.index
            }),
            [0, 1, 2, 3]
        )
        XCTAssertEqual(
            wang.matchingTiles(
                for: tiles[13],
                axis: .horizontal,
                collection: wang.collection,
                in: tiles
            ).map({ tile in
                tile.index
            }),
            [8, 9, 10, 11]
        )
        XCTAssertEqual(
            wang.matchingTiles(
                for: tiles[14],
                axis: .horizontal,
                collection: wang.collection,
                in: tiles
            ).map({ tile in
                tile.index
            }),
            [4, 5, 6, 7]
        )
        XCTAssertEqual(
            wang.matchingTiles(
                for: tiles[15],
                axis: .horizontal,
                collection: wang.collection,
                in: tiles
            ).map({ tile in
                tile.index
            }),
            [12, 13, 14, 15]
        )
    }
    
    func testMatchingVerticalCornerTiles() throws {
        let wang = Wang(width: 1, height: 1, collection: .corner)
        
        let tiles = wang.collection.tiles
        
        XCTAssertEqual(
            wang.matchingTiles(
                for: tiles[0],
                axis: .vertical,
                collection: wang.collection,
                in: tiles
            ).map({ tile in
                tile.index
            }),
            [0, 2, 4, 6]
        )
        XCTAssertEqual(
            wang.matchingTiles(
                for: tiles[1],
                axis: .vertical,
                collection: wang.collection,
                in: tiles
            ).map({ tile in
                tile.index
            }),
            [0, 2, 4, 6]
        )
        XCTAssertEqual(
            wang.matchingTiles(
                for: tiles[2],
                axis: .vertical,
                collection: wang.collection,
                in: tiles
            ).map({ tile in
                tile.index
            }),
            [1, 3, 5, 7]
        )
        XCTAssertEqual(
            wang.matchingTiles(
                for: tiles[3],
                axis: .vertical,
                collection: wang.collection,
                in: tiles
            ).map({ tile in
                tile.index
            }),
            [1, 3, 5, 7]
        )
        XCTAssertEqual(
            wang.matchingTiles(
                for: tiles[4],
                axis: .vertical,
                collection: wang.collection,
                in: tiles
            ).map({ tile in
                tile.index
            }),
            [8, 10, 12, 14]
        )
        XCTAssertEqual(
            wang.matchingTiles(
                for: tiles[5],
                axis: .vertical,
                collection: wang.collection,
                in: tiles
            ).map({ tile in
                tile.index
            }),
            [8, 10, 12, 14]
        )
        XCTAssertEqual(
            wang.matchingTiles(
                for: tiles[6],
                axis: .vertical,
                collection: wang.collection,
                in: tiles
            ).map({ tile in
                tile.index
            }),
            [9, 11, 13, 15]
        )
        XCTAssertEqual(
            wang.matchingTiles(
                for: tiles[7],
                axis: .vertical,
                collection: wang.collection,
                in: tiles
            ).map({ tile in
                tile.index
            }),
            [9, 11, 13, 15]
        )
        XCTAssertEqual(
            wang.matchingTiles(
                for: tiles[8],
                axis: .vertical,
                collection: wang.collection,
                in: tiles
            ).map({ tile in
                tile.index
            }),
            [0, 2, 4, 6]
        )
        XCTAssertEqual(
            wang.matchingTiles(
                for: tiles[9],
                axis: .vertical,
                collection: wang.collection,
                in: tiles
            ).map({ tile in
                tile.index
            }),
            [0, 2, 4, 6]
        )
        XCTAssertEqual(
            wang.matchingTiles(
                for: tiles[10],
                axis: .vertical,
                collection: wang.collection,
                in: tiles
            ).map({ tile in
                tile.index
            }),
            [1, 3, 5, 7]
        )
        XCTAssertEqual(
            wang.matchingTiles(
                for: tiles[11],
                axis: .vertical,
                collection: wang.collection,
                in: tiles
            ).map({ tile in
                tile.index
            }),
            [1, 3, 5, 7]
        )
        XCTAssertEqual(
            wang.matchingTiles(
                for: tiles[12],
                axis: .vertical,
                collection: wang.collection,
                in: tiles
            ).map({ tile in
                tile.index
            }),
            [8, 10, 12, 14]
        )
        XCTAssertEqual(
            wang.matchingTiles(
                for: tiles[13],
                axis: .vertical,
                collection: wang.collection,
                in: tiles
            ).map({ tile in
                tile.index
            }),
            [8, 10, 12, 14]
        )
        XCTAssertEqual(
            wang.matchingTiles(
                for: tiles[14],
                axis: .vertical,
                collection: wang.collection,
                in: tiles
            ).map({ tile in
                tile.index
            }),
            [9, 11, 13, 15]
        )
        XCTAssertEqual(
            wang.matchingTiles(
                for: tiles[15],
                axis: .vertical,
                collection: wang.collection,
                in: tiles
            ).map({ tile in
                tile.index
            }),
            [9, 11, 13, 15]
        )
    }
    
}
