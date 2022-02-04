# TrackingUI

This package extends SwiftUI with methods to track view events.

## Installation
To install the analytics framework just add this line to the dependencies section in the Package.swift
```swift
.package(url: "https://github.com/kkla320/TrackingUI.git", from: "0.1.0")
```
After that you just need to add the package as a depency in the corresponding target.
```swift
.target(
    name: "myProject",
    dependencies: [
        "TrackingUI"
    ])
```
