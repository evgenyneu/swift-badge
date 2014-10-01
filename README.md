# Overview

This is a badge view for iOS 7+. The style is similar to springboard badge in iOS 7 or 8.
It is a subclass of UILabel view.

## Usage

Badge can be created and positioned similar to any UIView.

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

```

If properties are changed after the view was first rendered call `badge.invalidateIntrinsicContentSize()`.

