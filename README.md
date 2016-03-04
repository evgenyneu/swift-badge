# Overview

This is a badge view for iOS 7+ written in Swift. The style is similar to the springboard badges in iOS 7 or 8.
The view is a subclass of UILabel view.

<img src='graphics/swift-badge.png' height='49' alt='Swift Badge'>
<img src='graphics/swift-badge-with-border.png' height='49' alt='Swift Badge with border'>

## Usage

Copy [SwiftBadge.swift](https://github.com/marketplacer/swift-badge/blob/master/swift-badge/SwiftBadge.swift) to your project. A badge can be created and positioned similar to any UIView.

Swift badge is written in Swift 2.0 for Xcode 7. To use it with Swift 1.2 get the [SwiftBadge.swift for Xcode 6](https://github.com/marketplacer/swift-badge/blob/swift-1.2/swift-badge/SwiftBadge.swift) or checkout the `swift-1.2` tag.


### Creating a badge in Storyboard

* Drag a **Label** to your view.
* Set its `class` to `SwiftBadge` in identity inspector.

<img src='https://raw.githubusercontent.com/marketplacer/swift-badge/master/graphics/swift-badge-class.png' alt='Add badge to storyboard'>

* Add auto layout constraints to position the badge.
* Set the badge properties in the attributes inspector.

<img src='https://raw.githubusercontent.com/marketplacer/swift-badge/master/graphics/swift_badge_attributes_inspector.png' width='376' alt='Change badge properties in attribute inspector'>


### Creating a badge from code

```Swift
let badge = SwiftBadge()
view.addSubview(badge)
```

## Customization

```Swift
// Text
badge.text = "2"

// Insets
badge.insets = CGSize(width: 12, height: 12)

// Font
badge.font = UIFont.preferredFontForTextStyle(UIFontTextStyleBody)

// Text color
badge.textColor = UIColor.yellowColor()

// Background color
badge.backgroundColor = UIColor.blackColor()

// Shadow
badge.shadowOpacityBadge = 0.5
badge.shadowOffsetBadge = CGSize(width: 0, height: 0)
badge.shadowRadiusBadge = 1.0
badge.shadowColorBadge = UIColor.blackColor()

// No shadow
badge.shadowOpacityBadge = 0

// Border width and color
badge.borderWidth = 5.0
badge.borderColor = UIColor.magentaColor()
```

## Alternative

There is a great alternative badge created by Sascha Paulus in Objective-C.

https://github.com/ckteebe/CustomBadge

## Contributors

* Thanks to [amg1976](https://github.com/amg1976) for adding a border to the badge.
