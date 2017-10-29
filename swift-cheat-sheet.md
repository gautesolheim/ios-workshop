# Swift 4 Cheat Sheet

### Constants and variables

```swift
let implicitInt = 42
let implicitDouble = 42.0
let explicitDouble: Double = 42

let countableRange = 0 ..< 42

var mutableStringArray = ["I'm", "a", "variable"]
mutableStringArray.append("😈")

var optionalString: String? = someBool ? "Am I nil?" : nil
if let firstCharacter = optionalString?.characters.first {
    print(firstCharacter)               // 'A'
} else {
    print(optionalString == nil)        // true
}
```

### Control flow

```swift
if someBool {} else if someOtherBool {} else {}

for index in 0 ..< someCollection.count {}

for item in someCollection {}

for evenNumber in countableRange where evenNumber % 2 == 0 {
    print(evenNumber)     // 0, 2, 4, 6, 8 ...
}
```

### Methods and tuples

```swift
func doSomething() {}

func doAndReturnSomething(string1: String, string2: String) -> String {
    return string1 + string2
}

func doAndReturnManyThings(string: String) -> (lower: String, upper: String, count: Int) {
    return (string.lowercased(), string.uppercased(), string.count)
}

doSomething()
let someThing = doAndReturnSomething(string1: "A", string2: "B")
let manyThings = doAndReturnManyThings(string: "Some String")

print("Many things: \(manyThings.lower), \(manyThings.upper), \(manyThings.count)")
```

### Classes and structures

```swift
class Pokestop: MySuperClass, MyProtocol1, MyProtocol2 {
    let location: Coordinate
    var hasLure: Bool

    init(location: Coordinate, hasLure: Bool = false) {
        self.location = location
        self.hasLure = hasLure
    }

    // Methods
}

struct Coordinate {
    let latitude: Int
    let longitude: Int

    // (Methods)
}

let pokestop1 = Pokestop(location: Coordinate(latitude: 10, longitude: 70))
let pokestop2 = Pokestop(location: Coordinate(latitude: 30, longitude: 50), hasLure: true)
```

### Extensions and computed properties

```swift
extension String {
    var isUppercase: Bool {
        return self.reduce(true) { $0 && !("a" ... "z").contains($1) }
    }
}

print("AB5~DWZ-1".isUppercase)      // true
```
