<img src='graphics/swift-badge.png' height='49' alt='Swift Badge'>
<img src='graphics/swift-badge-with-border.png' height='49' alt='Swift Badge with border'>

# Badge control for iOS written in Swift

This is a badge view for iOS 7+ written in Swift.

* The badge style is similar to the home screen badges in iOS.
* The badge is a subclass of UILabel view.
* It can be created and customized from the Storyboard or programatically.


## Usage

Copy [SwiftBadge.swift](https://github.com/marketplacer/swift-badge/blob/master/swift-badge/SwiftBadge.swift) to your project.


### Creating a badge in Storyboard

* Drag a **Label** to your view.
* Set its `class` to `SwiftBadge` in identity inspector.

<img src='https://raw.githubusercontent.com/marketplacer/swift-badge/master/graphics/swift_badge_class_name_2.png' width='258' alt='Add badge to storyboard'>

* Set the badge properties in the attributes inspector.

<img src='https://raw.githubusercontent.com/marketplacer/swift-badge/master/graphics/swift_badge_attributes_inspector.png' width='376' alt='Change badge properties in attribute inspector'>


### Creating a badge from code

```Swift
let badge = SwiftBadge()
view.addSubview(badge)
```

[See example](https://github.com/marketplacer/swift-badge/blob/master/swift-badge/CreateBadgeFromCodeViewController.swift) of how to create and position the badge from code in the demo app.

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

// Badge color
badge.badgeColor = UIColor.blackColor()

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

## Demo app

This project includes a demo app.

<img src='https://raw.githubusercontent.com/marketplacer/swift-badge/master/graphics/swift_badge_demo_app.png' width='414' alt='Swift badge demo app'>


## Alternative

There is a great alternative badge created by Sascha Paulus in Objective-C.

https://github.com/ckteebe/CustomBadge

## Contributors

* Thanks to [amg1976](https://github.com/amg1976) for adding a border to the badge.
