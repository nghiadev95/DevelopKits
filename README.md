<p align="center">
  <img src="https://raw.githubusercontent.com/nghiadev95/DevelopKits/master/Assets/logo.png" title="DevelopKits">
</p>

[![Build Status](https://github.com/nghiadev95/DevelopKits/workflows/Swift/badge.svg?branch=master)](https://github.com/nghiadev95/DevelopKits/actions)
[![Cocoapods platforms](https://img.shields.io/cocoapods/p/DevelopKits)](https://github.com/nghiadev95/DevelopKits)
[![Cocoapods](https://img.shields.io/cocoapods/v/DevelopKits.svg)](https://cocoapods.org/pods/DevelopKits)
[![SPM compatible](https://img.shields.io/badge/SPM-Compatible-brightgreen.svg?style=flat)](https://swift.org/package-manager/)
[![Swift](https://img.shields.io/badge/Swift-5.3-orange.svg)](https://swift.org)
[![Xcode](https://img.shields.io/badge/Xcode-11.6-blue.svg)](https://developer.apple.com/xcode)
[![MIT](https://img.shields.io/badge/License-MIT-red.svg)](https://opensource.org/licenses/MIT)

**DevelopKits** is a composited library of useful classes, extensions for helping development more fastly

## Requirements

- **iOS** 11.0+
- Swift 5.0+

## Installation

### CocoaPods

To integrate DevelopKits into your Xcode project using CocoaPods, specify it in your `Podfile`

```ruby
pod 'DevelopKits'
```

### Swift Package Manager
You can use The Swift Package Manager to install DevelopKits by adding the proper description to your `Package.swift` 

```swift
import PackageDescription

let package = Package(
    name: "YOUR_PROJECT_NAME",
    targets: [],
    dependencies: [
        .package(url: "https://github.com/nghiadev95/DevelopKits.git", from: "1.0.0")
    ]
)
```


## Usage

### Safe Dictionary
Using this class for safe access dictionary value when working with multi thread

```swift
let safeDictionary = SafeDictionary<String, Int>(queueLabel: "queue.name")

/// Get value from key
let id = safeDictionary["id"]
// or
let id = safeDictionary.getValue(key: "id")

/// Update value for key
safeDictionary.updateValue(2, forKey: "id")
// or
safeDictionary["id"] = 2

/// Remove value with key
safeDictionary.removeValue(forKey: "id")

/// Get all keys
let keys = safeDictionary.keys

/// Remove all element with keeping capacity ability
safeDictionary.removeAll()
safeDictionary.removeAll(keepingCapacity: true)
```

### User Default
Property Wrapper of User Default

```swift
/// Saving primitive data type
@UserDefaultVariable(key: "accessToken", defaultValue: nil)
var accessToken: String?

/// Saving custom Codable object
@UserDefaultObject(key: "user")
var user: UserProfile?
```

### Then

- [Then](https://github.com/devxoul/Then)

### SwifterSwift

- [SwifterSwift](https://github.com/SwifterSwift/SwifterSwift)

### Extension

- [Foundation](https://github.com/nghiadev95/DevelopKits/tree/master/Sources/Foundation)
- [UIKit](https://github.com/nghiadev95/DevelopKits/tree/master/Sources/UIKit)


## License

- DevelopKits is using [SwifterSwift](https://github.com/SwifterSwift/SwifterSwift). See  [LICENSE](https://github.com/SwifterSwift/SwifterSwift/blob/master/LICENSE) for more information.
- DevelopKits is using [Then](https://github.com/devxoul/Then). See  [LICENSE](https://github.com/devxoul/Then/blob/master/LICENSE) for more information.
- DevelopKits is released under the MIT license. See [LICENSE](https://github.com/nghiadev95/DevelopKits/blob/master/LICENSE) for more information.

