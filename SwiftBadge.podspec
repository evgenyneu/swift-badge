Pod::Spec.new do |s|
  s.name        = "SwiftBadge"
  s.version     = "2.0.0"
  s.license     = { :type => "MIT" }
  s.homepage    = "https://github.com/marketplacer/swift-badge"
  s.summary     = "Badge view for iOS written in Swift"
  s.description  = <<-DESC
                   This is a UI widget for iOS that shows a badge.

                   * The badge is a subclass of UILabel view.
                   * It can be created and customized from the Storyboard or programatically.
                   * There is nothing more to say really, it's just a badge.
                   DESC
  s.authors     = { "Evgenii Neumerzhitckii" => "sausageskin@gmail.com" }
  s.source      = { :git => "https://github.com/marketplacer/Dodo.git", :tag => s.version }
  s.screenshots  = "https://raw.githubusercontent.com/marketplacer/Dodo/master/Graphics/Paintings/alices_adventures_in_wonderland.png"
  s.source_files = "Dodo/**/*.swift"
  s.resources  = "Dodo/**/*.xcassets"
  s.ios.deployment_target = "8.0"
end