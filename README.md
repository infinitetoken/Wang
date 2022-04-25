# Wang

Generate random (or pseudo-random) Wang tile arrays in Swift

## Usage

Generate a matching random Wang tile array with given width and height using the specified collection:

```swift
import Wang

let wang = Wang(width: 18, height: 12, collection: .corner)
let result = wang.generate() // [Wang.Tile]
        
```

Generate a matching pseudo-random Wang tile array with given width and height using the specified collection:

```swift
import Wang

let wang = Wang(width: 18, height: 12, collection: .blob)
let result = wang.generate(seed: 42) // [Wang.Tile]
        
```

## References

- [http://www.cr31.co.uk/stagecast/wang/intro.html](http://www.cr31.co.uk/stagecast/wang/intro.html)
- [https://compform.net/tiles/](https://compform.net/tiles/)
- [https://observablehq.com/@asasine/wang-tiles](https://observablehq.com/@asasine/wang-tiles)
- [https://en.wikipedia.org/wiki/Wang_tile](https://en.wikipedia.org/wiki/Wang_tile)
- [https://users.csc.calpoly.edu/~zwood/teaching/csc572/final12/kowen/](https://users.csc.calpoly.edu/~zwood/teaching/csc572/final12/kowen/)
