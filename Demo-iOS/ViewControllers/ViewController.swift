import BadgeSwift

class ViewController: UIViewController {
  
  @IBOutlet weak var badge: BadgeSwift!
  
  @IBOutlet weak var valueStepper: UIStepper!
  @IBOutlet weak var insetWidthStepper: UIStepper!
  @IBOutlet weak var insetHeightStepper: UIStepper!
  @IBOutlet weak var fontSizeStepper: UIStepper!
  @IBOutlet weak var borderWidthStepper: UIStepper!
  
  let defaultBadgeValue = 10.0
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    valueStepper.value = defaultBadgeValue
    insetWidthStepper.value = Double(badge.insets.width)
    insetHeightStepper.value = Double(badge.insets.height)
    fontSizeStepper.value = Double(badge.font.pointSize)
    borderWidthStepper.value = Double(badge.borderWidth)
    
    updatebadgeValue()
    updateInsetValue()
    updateFontSizeValue()
    updateBorderWidthValue()
  }
  
  @IBAction func shadowSwitch(_ sender: UISwitch) {
    badge.layer.shadowOpacity = sender.isOn ? 0.5 : 0.0
  }
  
  @IBAction func onStepperChanged(_ stepper: UIStepper) {
    updatebadgeValue()
  }
  
  private func updatebadgeValue() {
    badge.text = formatBadgeValue(valueStepper.value)
  }
  
  @IBAction func onInsetStepperChanged(_ sender: AnyObject) {
    updateInsetValue()
  }
  
  private func updateInsetValue() {
    badge.insets = CGSize(
      width: insetWidthStepper.value,
      height: insetHeightStepper.value)
  }
  
  @IBAction func onFontSizeStepperChanged(_ sender: AnyObject) {
    updateFontSizeValue()
  }
  
  private func updateFontSizeValue() {
    let fontSize = fontSizeStepper.value
    badge.font = UIFont(name: badge.font!.fontName, size: CGFloat(fontSize))
  }
  
  @IBAction func onBorderWidthStepperChanged(_ sender: AnyObject) {
    updateBorderWidthValue()
  }
  
  private func updateBorderWidthValue() {
    badge.borderWidth = max(0.0, CGFloat(borderWidthStepper.value))
  }
  
  private func formatBadgeValue(_ value: Double) -> String {
    return NSString(format: "%.0f", value) as String
  }
  
  @IBAction func onCornerRadiusStepperChanged(_ sender: UIStepper) {
    badge.badgeCornerRadius = CGFloat(sender.value)
  }
}

