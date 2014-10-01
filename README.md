# Overview

This is a badge view for iOS 7+. The style is similar to the springboard badges in iOS 7 or 8.
The view is a subclass of UILabel view.

## Usage

Copy `SwiftBadge.swift` to your project. A badge can be created and positioned similar to any UIView.
One can use autolayout for positioning and dynamic type fonts.

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

