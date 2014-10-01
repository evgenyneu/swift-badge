# Overview

This is a badge view for iOS 7+ written in Swift. The style is similar to the springboard badges in iOS 7 or 8.
The view is a subclass of UILabel view.

<img src='https://raw.githubusercontent.com/exchangegroup/swift-badge/master/graphics/swift-badge.png' height='49' alt='Swift Badge'>

## Usage

Copy `SwiftBadge.swift` to your project. A badge can be created and positioned similar to any UIView.

### Creating a badge in storyboard

* Drag a **Label** to your view.
* Set its `class` to `SwiftBadge` in identity inspector
* Add auto layout constraints to position the badge. There is no need to set the size constrtaints, it will be determined dynamically based on badge text. You can see how it is done in this demo app.

<img src='https://raw.githubusercontent.com/exchangegroup/swift-badge/master/graphics/swift-badge-class.png' alt='Add badge to storyboard'>


### Creating a badge from code

```
let badge = SwiftBadge()
view.addSubview(badge)
```

## Customization

```
// text
badge.text = '2'

// insets
badge.defaultInsets = CGSize(width: 12, height: 12)

// font
badge.font = UIFont.preferredFontForTextStyle(UIFontTextStyleBody)

// text color
badge.textColor = UIColor.yellowColor()

// background color
badge.layer.backgroundColor = UIColor.blackColor().CGColor

// shadow
badge.layer.shadowOpacity = 0.5
badge.layer.shadowOffset = CGSize(width: 0, height: 0)
badge.layer.shadowRadius = 1.0
badge.layer.shadowColor = UIColor.blackColor().CGColor

// no shadow
badge.layer.shadowOpacity = 0
```

If properties are changed after the view was first rendered call `badge.invalidateIntrinsicContentSize()`.

## Alternative

There is a great alternative badge created by Sascha Paulus in Objective-C.

https://github.com/ckteebe/CustomBadge

