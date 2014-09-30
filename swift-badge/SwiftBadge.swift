//
//  SwiftBadge.swift
//  swift-badge
//
//  Created by Evgenii Neumerzhitckii on 1/10/2014.
//  Copyright (c) 2014 The Exchange Group Pty Ltd. All rights reserved.
//

import UIKit

class SwiftBadge: UIView {
  var text = ""

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

    backgroundColor = UIColor.greenColor()
  }

  override func intrinsicContentSize() -> CGSize {
    return CGSize(width: 50, height: 30)
  }
}
