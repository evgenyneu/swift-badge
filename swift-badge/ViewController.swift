//
//  ViewController.swift
//  swift-badge
//
//  Created by Evgenii Neumerzhitckii on 1/10/2014.
//  Copyright (c) 2014 The Exchange Group Pty Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    createBadge()
  }

  private func createBadge() {
    let badge = SwiftBadge()

    view.addSubview(badge)

    addCenterXConstraints(badge)
    addCenterYConstraints(badge)
  }

  private func addCenterXConstraints(chilView: UIView) {
    view.addConstraint(NSLayoutConstraint(item: view,
      attribute: NSLayoutAttribute.CenterX,
      relatedBy: NSLayoutRelation.Equal,
      toItem:chilView,
      attribute: NSLayoutAttribute.CenterX,
      multiplier:1,
      constant:0))
  }

  private func addCenterYConstraints(chilView: UIView) {
    view.addConstraint(NSLayoutConstraint(item: view,
      attribute: NSLayoutAttribute.CenterY,
      relatedBy: NSLayoutRelation.Equal,
      toItem:chilView,
      attribute: NSLayoutAttribute.CenterY,
      multiplier:1,
      constant:0))
  }
  
}

