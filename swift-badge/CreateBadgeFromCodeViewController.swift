import UIKit

class CreateBadgeFromCodeViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    
    createBadge()
  }
  
  private func createBadge() {
    let badge = SwiftBadge()
    view.addSubview(badge)
    configureBadge(badge)
    positionBadge(badge)
  }
  
  private func configureBadge(badge: SwiftBadge) {
    // Text
    badge.text = "2"
    
    // Insets
    badge.insets = CGSize(width: 12, height: 12)
    
    // Font
    badge.font = UIFont.preferredFontForTextStyle(UIFontTextStyleBody)
    
    // Text color
    badge.textColor = UIColor.yellowColor()
    
    // Badge color
    badge.badgeColor = UIColor.blackColor()
    
    // Shadow
    badge.shadowOpacityBadge = 0.5
    badge.shadowOffsetBadge = CGSize(width: 0, height: 0)
    badge.shadowRadiusBadge = 1.0
    badge.shadowColorBadge = UIColor.blackColor()
    
    // No shadow
    badge.shadowOpacityBadge = 0
    
    // Border width and color
    badge.borderWidth = 5.0
    badge.borderColor = UIColor.magentaColor()
  }
  
  private func positionBadge(badge: UIView) {
    badge.translatesAutoresizingMaskIntoConstraints = false
    var constraints = [NSLayoutConstraint]()
    
    // Center the badge vertically in its container
    constraints.append(NSLayoutConstraint(
      item: badge,
      attribute: NSLayoutAttribute.CenterY,
      relatedBy: NSLayoutRelation.Equal,
      toItem: view,
      attribute: NSLayoutAttribute.CenterY,
      multiplier: 1, constant: 0)
    )
    
    // Center the badge horizontally in its container
    constraints.append(NSLayoutConstraint(
      item: badge,
      attribute: NSLayoutAttribute.CenterX,
      relatedBy: NSLayoutRelation.Equal,
      toItem: view,
      attribute: NSLayoutAttribute.CenterX,
      multiplier: 1, constant: 0)
    )
    
    view.addConstraints(constraints)
  }
}
