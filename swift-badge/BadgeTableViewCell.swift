
import UIKit

class BadgeTableViewCell: UITableViewCell {
  @IBOutlet weak var badge: SwiftBadge!
  
  func update(number: Int) {
    badge.text = String(number)
  }
}
