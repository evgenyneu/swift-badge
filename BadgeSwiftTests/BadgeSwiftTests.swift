import XCTest
import BadgeSwift

class BadgeSwiftTests: XCTestCase {
  
  var badge: BadgeSwift!
  
  override func setUp() {
    super.setUp()
    badge = BadgeSwift(frame: CGRect(origin: CGPoint(), size: CGSize(width: 10, height: 10)))
  }

  func testCalculateTextRectangle() {
    badge.text = "Hello"
    badge.font = UIFont.systemFont(ofSize: 12)
    badge.insets = CGSize(width: 13, height: 17)
    badge.borderWidth = 3
    let initialRect = CGRect(origin: CGPoint(), size: CGSize(width: 100, height: 60))
    
    let rect = badge.textRect(forBounds: initialRect, limitedToNumberOfLines: 1)
    
    XCTAssertEqual(61.0, rect.width)
    XCTAssertEqual(55, rect.height.rounded())
  }
  
  func testCalculateTextRectangle_widthLessThanHeight() {
    badge.text = "Hello"
    badge.font = UIFont.systemFont(ofSize: 12)
    badge.insets = CGSize(width: 2, height: 17)
    badge.borderWidth = 3
    let initialRect = CGRect(origin: CGPoint(), size: CGSize(width: 30, height: 60))
    
    let rect = badge.textRect(forBounds: initialRect, limitedToNumberOfLines: 1)
    
    XCTAssertEqual(55, rect.width.rounded())
    XCTAssertEqual(55, rect.height.rounded())
  }
  
  func testCenteredByDefault() {
    XCTAssertEqual(NSTextAlignment.center, badge.textAlignment)
  }
  
  func testDoNotClipToBoundsByDefault() {
    XCTAssertFalse(badge.clipsToBounds)
  }
  
  func testSetShadowOpacity() {
    badge.shadowOpacityBadge = 0.31
    
    XCTAssertEqual(0.31, badge.layer.shadowOpacity)
  }
  
  func testSetShadowRadius() {
    badge.shadowRadiusBadge = 0.32
    
    XCTAssertEqual(0.32, badge.layer.shadowRadius)
  }
  
  func testSetShadowColor() {
    badge.shadowColorBadge = UIColor.purple
    
    XCTAssertEqual(UIColor.purple, UIColor(cgColor: badge.layer.shadowColor!))
  }
  
  func testSetShadowOffset() {
    badge.shadowOffsetBadge = CGSize(width: 34, height: 52)
    
    XCTAssertEqual(CGSize(width: 34, height: 52), badge.layer.shadowOffset)
  }
  
  // MARK: - Corner radius
  
  func testCornerRadius_default() {
    badge.drawText(in: CGRect(origin: CGPoint(), size: CGSize(width: 30, height: 55)))
    XCTAssertEqual(27.5, badge.layer.cornerRadius)
  }
  
  func testCornerRadius_set() {
    badge.cornerRadius = 11.345
    badge.drawText(in: CGRect(origin: CGPoint(), size: CGSize(width: 30, height: 60)))
    XCTAssertEqual(11.345, badge.layer.cornerRadius)
  }
  
  func testCornerRadius_setZero() {
    badge.cornerRadius = 0
    badge.drawText(in: CGRect(origin: CGPoint(), size: CGSize(width: 30, height: 60)))
    XCTAssertEqual(0, badge.layer.cornerRadius)
  }
  
  func testCornerRadius_resetToDefault() {
    badge.cornerRadius = 11.345
    badge.drawText(in: CGRect(origin: CGPoint(), size: CGSize(width: 30, height: 60)))
    badge.cornerRadius = -1
    badge.drawText(in: CGRect(origin: CGPoint(), size: CGSize(width: 30, height: 63)))
    XCTAssertEqual(31.5, badge.layer.cornerRadius)
  }
}
