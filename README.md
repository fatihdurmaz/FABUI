# Floating Action Button for SwiftUI

![Swift](https://img.shields.io/badge/Swift-5.9|5.8|5.7|5.6|5.5-orange.svg)
![Platform](https://img.shields.io/badge/Platform-iOS%20-red.svg)
![License](https://img.shields.io/badge/license-MIT-blue.svg)
![Version](https://img.shields.io/badge/iOS-17-green.svg)

FABUI is a Swift package that allows the creation of customizable Floating Action Buttons (FAB) using SwiftUI.

##  Features
- 
- Simple and intuitive SwiftUI-based UI for a smooth user experience.
- Easily customize the UI and integration into your existing SwiftUI projects.
  
## Requirements

- Swift 5.5 or later
- iOS 17.0 or later

## Installation

You can include this package in your project via Swift Package Manager. In your Xcode project, go to "File" -> "Swift Packages" -> "Add Package Dependency" and add the following URL:

```url
https://github.com/fatihdurmaz/FABUI
```

## Usage/Examples

```swift

import SwiftUI
import FABUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Hello, SwiftUI!")
            }
            .fab(icon: Image(systemName: "plus"), color: .orange, action: {
                print("Hello, SwiftUI!")
            })
            .navigationTitle("FABUI")
        }
    }
}

```

