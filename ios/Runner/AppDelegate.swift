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
    // there is a window with a FlutterViewController as root. The engine must
    // have plugins registered, otherwise SharedPreferences / sqflite / audio
    // plugins are unavailable and the app cannot load its settings.
    if self.window == nil || self.window?.rootViewController == nil {
      let engine = FlutterEngine(name: "io.flutter")
      engine.run()
      GeneratedPluginRegistrant.register(with: engine)
      let controller = FlutterViewController(engine: engine, nibName: nil, bundle: nil)
      let window = UIWindow(frame: UIScreen.main.bounds)
      window.rootViewController = controller
      window.makeKeyAndVisible()
      self.window = window
    }
    return result
  }
}
