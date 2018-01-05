Kamagari
===
[![Language](http://img.shields.io/badge/language-swift-brightgreen.svg?style=flat
)](https://developer.apple.com/swift)
[![CocoaPods](https://img.shields.io/cocoapods/v/Kamagari.svg)]()
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![License](http://img.shields.io/badge/license-MIT-lightgrey.svg?style=flat
)](http://mit-license.org)
[![Issues](https://img.shields.io/github/issues/tasanobu/Kamagari.svg?style=flat
)](https://github.com/tasanobu/Kamagari/issues?state=open)

Simple UIAlertController builder class in Swift.

## Features
- AlertBuilder class to simply build UIAlertController by using method chaining
- UIAlertController extension methods to simply present UIAlertController on screen

## Usage
The following sample codes shows how to use Kamagari in order to present UIAlertController.

```
// ActionSheet Sample
    if UIDevice.current.userInterfaceIdiom != .pad {
            // Sample to show on iPad
            AlertBuilder(title: "Question", message: "Are you sure where Kamagari is?", preferredStyle: .actionSheet)
                .addAction(title: "NO", style: .cancel) { _ in }
                .addAction(title: "YES", style: .default) { _ in }
                .build()
                .kam_show(animated: true)
    } else {
            /*
             Sample to show on iPad
             With setPopoverPresentationProperties(), specify the properties of UIPopoverPresentationController.
             */
            AlertBuilder(title: "Question", message: "Are you sure where Kamagari is?", preferredStyle: .actionSheet)
                .addAction(title: "YES", style: .default) { _ in }
                .addAction(title: "Not Sure", style: .default) { _ in }
                .setPopoverPresentationProperties(sourceView: view, sourceRect: CGRect(x: 0, y: 0, width: 100, height: 100) ,                                barButtonItem: nil, permittedArrowDirections: .any)
                .build()
                .kam_show(animated: true)
  }
```

<table>
<td><img src="ScreenShots/00.png"></td>
<td><img src="ScreenShots/01.png"></td>
</table>

## Requirements
- iOS 8.0+
- Swift 4.0
- Xcode 9.0

## Installation
- Install with CocoaPods
```
pod 'Kamagari'
```
- Copy in all the files into your project
- Use git submodule

## Release Notes
See https://github.com/tasanobu/Kamagari/releases

## License
Kamagari is released under the MIT license. See LICENSE for details.
