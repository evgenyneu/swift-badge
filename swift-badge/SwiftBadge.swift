//
//  SwiftBadge.swift
//  swift-badge
//
//  Created by Evgenii Neumerzhitckii on 1/10/2014.
//  Copyright (c) 2014 The Exchange Group Pty Ltd. All rights reserved.
//

import UIKit

class SwiftBadge: UILabel {
  // Padding between label text and its border
  var edgeInsets:UIEdgeInsets = UIEdgeInsets(top: 2, left: 7.5, bottom: 2, right: 7.5)

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
    layer.shadowOffset = CGSize(width: 1, height: 1)
    layer.shadowRadius = 0.5
    layer.shadowColor = UIColor.blackColor().CGColor
  }

  override func intrinsicContentSize() -> CGSize {
    let size = super.intrinsicContentSize()

    println("intrinsic size \(size)")
    layer.cornerRadius = size.height / 2
    return size
  }

  // Add custom insets
  // --------------------
  override func textRectForBounds(bounds: CGRect, limitedToNumberOfLines numberOfLines: Int) -> CGRect {
    var rect = super.textRectForBounds(UIEdgeInsetsInsetRect(bounds, edgeInsets), limitedToNumberOfLines: numberOfLines)

    rect.origin.x -= edgeInsets.left
    rect.origin.y -= edgeInsets.top
    rect.size.width  += (edgeInsets.left + edgeInsets.right);
    rect.size.height += (edgeInsets.top + edgeInsets.bottom);

    return rect
  }

  override func drawTextInRect(rect: CGRect) {
    super.drawTextInRect(UIEdgeInsetsInsetRect(rect, edgeInsets))
  }
}
