
import UIKit

class BadgeTableViewCell: UITableViewCell {
  @IBOutlet weak var badge: BadgeSwift!
  
  func update(_ number: Int) {
    badge.text = String(number)
  }
}
