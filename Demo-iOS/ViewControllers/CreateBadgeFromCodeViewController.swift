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
    badge.font = UIFont.preferredFont(forTextStyle: UIFont.TextStyle.body)
    
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
      attribute: NSLayoutConstraint.Attribute.centerY,
      relatedBy: NSLayoutConstraint.Relation.equal,
      toItem: view,
      attribute: NSLayoutConstraint.Attribute.centerY,
      multiplier: 1, constant: 0)
    )
    
    // Center the badge horizontally in its container
    constraints.append(NSLayoutConstraint(
      item: badge,
      attribute: NSLayoutConstraint.Attribute.centerX,
      relatedBy: NSLayoutConstraint.Relation.equal,
      toItem: view,
      attribute: NSLayoutConstraint.Attribute.centerX,
      multiplier: 1, constant: 0)
    )
    
    view.addConstraints(constraints)
  }
}
