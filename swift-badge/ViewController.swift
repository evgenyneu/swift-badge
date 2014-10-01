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
  @IBOutlet weak var insetStepper: UIStepper!

  let defaultBadgeValue = 1.0
  let defaultInsetValue = 2.0

  var badge: SwiftBadge?

  override func viewDidLoad() {
    super.viewDidLoad()

    valueStepper.value = defaultBadgeValue
    insetStepper.value = defaultInsetValue

    createBadge()

    updatebadgeValue()
    updateInsetValue()
  }

  private func createBadge() {
    let newBadge = SwiftBadge()

    newBadge.defaultInsets = CGSize(width: 12, height: 12)
    badge = newBadge
    newBadge.font = UIFont.preferredFontForTextStyle(UIFontTextStyleBody)
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

  @IBAction func onInsetStepperChanged(sender: AnyObject) {
    updateInsetValue()
  }

  private func updateInsetValue() {
    if let currentBadge = badge {
      var inset = insetStepper.value
      currentBadge.defaultInsets = CGSize(width: inset, height: inset)
      currentBadge.invalidateIntrinsicContentSize()
    }
  }

  private func formatBadgeValue(value: Double) -> String {
    return NSString(format: "%.0f", value)
  }
}

