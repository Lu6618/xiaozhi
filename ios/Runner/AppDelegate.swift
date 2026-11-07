import Flutter
import UIKit

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    let result = super.application(application, didFinishLaunchingWithOptions: launchOptions)
    // No main storyboard is used (UIMainStoryboardFile removed), so make sure
    // there is a window with a FlutterViewController as root.
    if self.window == nil || self.window?.rootViewController == nil {
      let controller = FlutterViewController()
      let window = UIWindow(frame: UIScreen.main.bounds)
      window.rootViewController = controller
      window.makeKeyAndVisible()
      self.window = window
    }
    return result
  }
}
