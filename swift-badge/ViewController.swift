//
//  ViewController.swift
//  swift-badge
//
//  Created by Evgenii Neumerzhitckii on 1/10/2014.
//  Copyright (c) 2014 The Exchange Group Pty Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var valueStepper: UIStepper!

  let defaultBadgeValue = 1.0
  var badge: SwiftBadge?

  override func viewDidLoad() {
    super.viewDidLoad()

    valueStepper.value = defaultBadgeValue
    createBadge()

    updatebadgeValue()
  }

  private func createBadge() {
    let newBadge = SwiftBadge()

    badge = newBadge

    view.addSubview(newBadge)

    addCenterXConstraints(newBadge)
    addCenterYConstraints(newBadge)
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
  
  @IBAction func onStepperChanged(stepper: UIStepper) {
    updatebadgeValue()
  }

  private func updatebadgeValue() {
    if let currentBadge = badge {
      currentBadge.text = formatBadgeValue(valueStepper.value)
    }
  }

  private func formatBadgeValue(value: Double) -> String {
    return NSString(format: "%.0f", value)
  }
}

