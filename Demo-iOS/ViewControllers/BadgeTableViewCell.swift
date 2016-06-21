
import UIKit

class BadgeTableViewCell: UITableViewCell {
  @IBOutlet weak var badge: SwiftBadge!
  
  func update(_ number: Int) {
    badge.text = String(number)
  }
}
