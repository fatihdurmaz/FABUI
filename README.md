# Floating Action Button for SwiftUI

![Swift](https://img.shields.io/badge/Swift-5.10-orange.svg)
![Platform](https://img.shields.io/badge/Platform-iOS%20-red.svg)
![License](https://img.shields.io/badge/license-MIT-blue.svg)
![Version](https://img.shields.io/badge/iOS-17-green.svg)

FABUI is a Swift package that allows the creation of customizable Floating Action Buttons (FAB) using SwiftUI.

## Customization
You can customize the FABModifier with various parameters:

- icon: The icon displayed on the FAB.
- color: The background color of the FAB.
- iconColor: (Optional) The color of the icon. Default is white.
- shapeStyle: (Optional) The shape of the FAB. Default is circle. You can use .roundedRectangle(cornerRadius) to specify a rounded rectangle with a corner radius.
- radius: (Optional) The shadow radius of the FAB. Default is 1.
- action: The action to perform when the FAB is tapped.
  
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

## Licence

This project is licensed under the MIT License. See the LICENSE file for more information.

## Contributing
If you would like to contribute, please submit a pull request or report an issue. Thank you for your contributions!
