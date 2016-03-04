import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var badge: SwiftBadge!
  
  @IBOutlet weak var valueStepper: UIStepper!
  @IBOutlet weak var insetStepper: UIStepper!
  @IBOutlet weak var fontSizeStepper: UIStepper!
  @IBOutlet weak var borderWidthStepper: UIStepper!

  let defaultBadgeValue = 10.0
  let defaultInsetValue = 5.0
  let defaultFontSize = 20.0
  let defaultBorderWidth = 0.0

  override func viewDidLoad() {
    super.viewDidLoad()

    valueStepper.value = defaultBadgeValue
    insetStepper.value = defaultInsetValue
    fontSizeStepper.value = defaultFontSize
    borderWidthStepper.value = defaultBorderWidth

    updatebadgeValue()
    updateInsetValue()
    updateFontSizeValue()
    updateBorderWidthValue()
  }

  @IBAction func shadowSwitch(sender: UISwitch) {
    badge.layer.shadowOpacity = sender.on ? 0.5 : 0.0
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
  }

  @IBAction func onFontSizeStepperChanged(sender: AnyObject) {
    updateFontSizeValue()
  }

  private func updateFontSizeValue() {
    let fontSize = fontSizeStepper.value
    badge.font = UIFont(name: badge.font!.fontName, size: CGFloat(fontSize))
  }

  @IBAction func onBorderWidthStepperChanged(sender: AnyObject) {
    updateBorderWidthValue()
  }

  private func updateBorderWidthValue() {
    badge.borderWidth = max(0.0, CGFloat(borderWidthStepper.value))
  }

  private func formatBadgeValue(value: Double) -> String {
    return NSString(format: "%.0f", value) as String
  }
}

