<p align="center">
  <img src="https://raw.githubusercontent.com/nghiadev95/iDevKits/master/Assets/logo.png" title="iDevKits">
</p>

<!-- [![Build Status](https://github.com/iDevKits/iDevKits/workflows/iDevKits/badge.svg?branch=master)](https://github.com/nghiadev95/iDevKits/actions) -->
[![Cocoapods platforms](https://img.shields.io/cocoapods/p/iDevKits)](https://github.com/nghiadev95/iDevKits)
[![Cocoapods](https://img.shields.io/cocoapods/v/iDevKits.svg)](https://cocoapods.org/pods/iDevKits)
[![SPM compatible](https://img.shields.io/badge/SPM-Compatible-brightgreen.svg?style=flat)](https://swift.org/package-manager/)
[![Swift](https://img.shields.io/badge/Swift-5.3-orange.svg)](https://swift.org)
[![Xcode](https://img.shields.io/badge/Xcode-11.6-blue.svg)](https://developer.apple.com/xcode)
[![MIT](https://img.shields.io/badge/License-MIT-red.svg)](https://opensource.org/licenses/MIT)

**iDevKits** is a collection of useful extension .

## Requirements

- **iOS** 11.0+
- Swift 5.0+

## Installation

### CocoaPods
</br>
<p>To integrate iDevKits into your Xcode project using <a href="http://cocoapods.org">CocoaPods</a>, specify it in your <code>Podfile</code>:</p>

<h4>- Integrate All extensions (recommended):</h4>
<pre><code class="ruby language-ruby">pod 'iDevKits'</code></pre>

<h4>- Integrate SafeDictionary only:</h4>
<pre><code class="ruby language-ruby">pod 'iDevKits/SafeDictionary'</code></pre>

<h4>- Integrate SwifterSwift only:</h4>
<pre><code class="ruby language-ruby">pod 'iDevKits/SwifterSwift'</code></pre>

<h4>- Integrate UserDefault only:</h4>
<pre><code class="ruby language-ruby">pod 'iDevKits/UserDefault'</code></pre>

### Swift Package Manager
</br>
<p>You can use <a href="https://swift.org/package-manager">The Swift Package Manager</a> to install iDevKits by adding the proper description to your <code>Package.swift</code> file:</p>

<pre><code class="swift language-swift">import PackageDescription

let package = Package(
    name: "YOUR_PROJECT_NAME",
    targets: [],
    dependencies: [
        .package(url: "https://github.com/nghiadev95/iDevKits.git", from: "1.0.0")
    ]
)
</code></pre>


## Usage

**Under construction**

## List of All Extensions

<ul>
<li><a href="https://github.com/nghiadev95/iDevKits/tree/master/Sources/UserDefault"><code>Array extensions</code></a></li>
<li><a href="https://github.com/nghiadev95/iDevKits/tree/master/Sources/SafeDictionary/SafeDictionary.swift"><code>Safe Dictionary</code></a></li>
<li><a href="https://github.com/nghiadev95/iDevKits/tree/master/Sources/SwifterSwift"><code>SwifterSwift</code></a></li>
</ul>

## Thanks

Special thanks to:

- [SwifterSwift Team](https://github.com/SwifterSwift/SwifterSwift) for their useful open source library ❤️

## License

- iDevKits is using [SwifterSwift](https://github.com/SwifterSwift/SwifterSwift) source code. See [SwiftSwift LICENSE](https://github.com/SwifterSwift/SwifterSwift/blob/master/LICENSE) for more information.
- iDevKits is released under the MIT license. See [LICENSE](https://github.com/nghiadev95/iDevKits/blob/master/LICENSE) for more information.
