//
//  ViewController.swift
//  swift-badge
//
//  Created by Evgenii Neumerzhitckii on 1/10/2014.
//  Copyright (c) 2014 The Exchange Group Pty Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var badge: SwiftBadge!
  
  @IBOutlet weak var valueStepper: UIStepper!
  @IBOutlet weak var insetStepper: UIStepper!

  let defaultBadgeValue = 1.0
  let defaultInsetValue = 2.0

  override func viewDidLoad() {
    super.viewDidLoad()

    valueStepper.value = defaultBadgeValue
    insetStepper.value = defaultInsetValue

    updatebadgeValue()
    updateInsetValue()
  }

  
  @IBAction func onStepperChanged(stepper: UIStepper) {
    updatebadgeValue()
  }

  private func updatebadgeValue() {
    badge.text = formatBadgeValue(valueStepper.value)
  }

  @IBAction func onInsetStepperChanged(sender: AnyObject) {
    updateInsetValue()
  }

  private func updateInsetValue() {
    let inset = insetStepper.value
    badge.defaultInsets = CGSize(width: inset, height: inset)
    badge.invalidateIntrinsicContentSize()
  }

  private func formatBadgeValue(value: Double) -> String {
    return NSString(format: "%.0f", value) as String
  }
}

