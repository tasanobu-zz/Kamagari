## 0.9.0
**Release Date : July 19, 2015 (JST)**
- Add a method to ```AlertController``` in order to configure properties of UIAlertController.popoverPresentationController

  The following sample is to show an action sheet by specifying the properties of UIPopoverPresentationController with the newly added method ```AlertBuilder.setPopoverPresentationProperties()```

  ```swift:
AlertBuilder(title: "Question", message: "Are you sure where Kamagari is?", preferredStyle: .ActionSheet)
    .addAction(title: "YES", style: .Default) { _ in }
    .addAction(title: "Not Sure", style: .Default) { _ in }
    .setPopoverPresentationProperties(sourceView: view, sourceRect: CGRectMake(0, 0, 100, 100), barButtonItem: nil, permittedArrowDirections: .Any)
    .build()
    .kam_show(animated: true)
```

## 0.8.0
**Release Date : Jun 22, 2015 (JST)**
- First Release
