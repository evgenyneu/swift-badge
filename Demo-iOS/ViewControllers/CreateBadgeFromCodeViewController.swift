import BadgeSwift

class CreateBadgeFromCodeViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    
    createBadge()
  }
  
  private func createBadge() {
    let badge = BadgeSwift()
    view.addSubview(badge)
    configureBadge(badge)
    positionBadge(badge)
  }
  
  private func configureBadge(_ badge: BadgeSwift) {
    // Text
    badge.text = "2"
    
    // Insets
    badge.insets = CGSize(width: 12, height: 12)
    
    // Font
    badge.font = UIFont.preferredFont(forTextStyle: UIFontTextStyle.body)
    
    // Text color
    badge.textColor = UIColor.yellow
    
    // Badge color
    badge.badgeColor = UIColor.black
    
    // Shadow
    badge.shadowOpacityBadge = 0.5
    badge.shadowOffsetBadge = CGSize(width: 0, height: 0)
    badge.shadowRadiusBadge = 1.0
    badge.shadowColorBadge = UIColor.black
    
    // No shadow
    badge.shadowOpacityBadge = 0
    
    // Border width and color
    badge.borderWidth = 5.0
    badge.borderColor = UIColor.magenta
  }
  
  private func positionBadge(_ badge: UIView) {
    badge.translatesAutoresizingMaskIntoConstraints = false
    var constraints = [NSLayoutConstraint]()
    
    // Center the badge vertically in its container
    constraints.append(NSLayoutConstraint(
      item: badge,
      attribute: NSLayoutAttribute.centerY,
      relatedBy: NSLayoutRelation.equal,
      toItem: view,
      attribute: NSLayoutAttribute.centerY,
      multiplier: 1, constant: 0)
    )
    
    // Center the badge horizontally in its container
    constraints.append(NSLayoutConstraint(
      item: badge,
      attribute: NSLayoutAttribute.centerX,
      relatedBy: NSLayoutRelation.equal,
      toItem: view,
      attribute: NSLayoutAttribute.centerX,
      multiplier: 1, constant: 0)
    )
    
    view.addConstraints(constraints)
  }
}
