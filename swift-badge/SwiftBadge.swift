//
//  SwiftBadge.swift
//  swift-badge
//
//  Created by Evgenii Neumerzhitckii on 1/10/2014.
//  Copyright (c) 2014 The Exchange Group Pty Ltd. All rights reserved.
//

import UIKit

class SwiftBadge: UILabel {
  var defaultInsets = CGSize(width: 6, height: 2)
  var actualInsets = CGSize()

  override init() {
    super.init()

    setup()
  }

  override init(frame: CGRect) {
    super.init(frame: frame)
  }

  required init(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }

  private func setup() {
    setTranslatesAutoresizingMaskIntoConstraints(false)

    layer.backgroundColor = UIColor.redColor().CGColor
    textColor = UIColor.whiteColor()

    // Shadow
    layer.shadowOpacity = 0.5
    layer.shadowOffset = CGSize(width: 0, height: 0)
    layer.shadowRadius = 0.5
    layer.shadowColor = UIColor.blackColor().CGColor
  }

  // Add custom insets
  // --------------------
  override func textRectForBounds(bounds: CGRect, limitedToNumberOfLines numberOfLines: Int) -> CGRect {
    let rect = super.textRectForBounds(bounds, limitedToNumberOfLines: numberOfLines)

    println("textRectForBounds bounds \(bounds) rect \(rect.size)")

    actualInsets = defaultInsets
    var rectWithDefaultInsets = CGRectInset(rect, -actualInsets.width, -actualInsets.height)

    // If width is less than height
    // Adjust the width insets to make it look round
    if rectWithDefaultInsets.width < rectWithDefaultInsets.height {
      actualInsets.width = (rectWithDefaultInsets.height - rect.width) / 2
    }

    return CGRectInset(rect, -actualInsets.width, -actualInsets.height)
  }

  // Draw text in the rect without insets
  override func drawTextInRect(rect: CGRect) {

    layer.cornerRadius = rect.height / 2

    let insets = UIEdgeInsets(
      top: actualInsets.height,
      left: actualInsets.width,
      bottom: actualInsets.height,
      right: actualInsets.width)

    let rectWithoutInsets = UIEdgeInsetsInsetRect(rect, insets)

    super.drawTextInRect(rectWithoutInsets)
  }
}
