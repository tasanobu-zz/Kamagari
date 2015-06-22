Simple UIAlertController builder class in Swift.

## Features
- AlertBuilder class to simply build UIAlertController by using method chaining
- UIAlertController extension methods to simply present UIAlertController on screen

## Usage
The following sample codes shows how to use Kamagari in order to present UIAlertController.

```
// Alert Sample
AlertBuilder(title: "Question", message: "Are you sure where Kamagari is?", preferredStyle: .Alert)
    .addAction(title: "NO", style: .Cancel) { _ in }
    .addAction(title: "YES", style: .Default) { _ in }
    .build()
    .kam_show(animated: true)

// ActionSheet Sample
AlertBuilder(title: "Question", message: "Are you sure where Kamagari is?", preferredStyle: .ActionSheet)
    .addAction(title: "NO", style: .Cancel) { _ in }
    .addAction(title: "YES", style: .Default) { _ in }
    .build()
    .kam_show(animated: true)
```

<table>
<td><img src="ScreenShots/00.png"></td>
<td><img src="ScreenShots/01.png"></td>
</table>

## Requirements
- iOS 8.0+
- Xcode 6.3

## Installation
- Install with CocoaPods
```
pod 'Kamagari'
```
- Copyin all the files into your project
- Use git submodule

## License
Kamagari is released under the MIT license. See LICENSE for details.
