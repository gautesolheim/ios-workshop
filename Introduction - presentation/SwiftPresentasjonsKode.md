```Swift
let maximumNumberOfLoginAttempts = 10
var currentLoginAttempt = 0
```

```Swift
var welcomeMessage: String
welcomeMessage = "Hello"
```

```Swift
let truedeSpråk = ["Älvdalsk", "Överkalixmål", "Samisk"] 
print("An endangered language is \(truedeSpråk[0])") // notice the unicode variable name
```

```Swift
var språk:[String] = ["Norsk", "Dansk", "Svensk"] // notice that I can specify a type
språk.append("Færøysk")
språk += truedeSpråk
print(språk) // prints out ["Norsk", "Dansk", "Svensk", "Færøysk", "Älvdalsk", "Överkalixmål", "Samisk"]
```

```Swift
let truedeSpråk = ["Älvdalsk", "Överkalixmål", "Samisk"] 

for språk in truedeSpråk {
  print(språk)
}
```

```Swift
for indeks in 1...5 {
  print("\(indeks) ganger 5 er \(indeks * 5)")
}
// 1 ganger 5 er 5
// 2 ganger 5 er 10 ...
```

```Swift
for _ in 1...10 {
  print("Jeg skrives ut ti ganger!")
}
```

```Swift
for i in 0..<truedeSpråk.count {
  print("\(i): \(truedeSpråk[i])")
}
// Skriver ut:
// 0: Älvdalsk
// 1: Överkalixmål
// 2: Samisk
```

```Swift
if værTemp > 35 {
  print("\(værTemp) er ny norsk varmerekord!")
} else if værTemp < -52 {
  print("\(værTemp) er ny norsk kulderekord!")
} else {
  print("Ingen ny norsk temperaturrekord..")
}
```

```Swift
func personligHilsen(navn:String) {
  print("Hei \(navn)!")
}
print(personligHilsen(navn: "Gaute")) // gir "Hei Gaute!"
```

```Swift
func minVerdi(arr:[Int]) -> Int {
  var minsteVerdi = arr[0]
  
  for tall in arr {
    if tall < minsteVerdi {
      minsteVerdi = tall
    }
  }
  return minsteVerdi
}

print(minVerdi(arr: [6,12,9,-2,5])) // gir -2
```

```Swift
var serverKode:Int = 404
print(serverKode) // gir 404
```

```Swift
var serverKode:Int? = 404
serverKode = nil
```

```Swift
if serverKode != nil {
  print(serverKode!)
}

if let kode = serverKode {
  print(kode)
}

print(serverKode ?? 0)
print(serverKode != nil ? serverKode! : 0)
```

