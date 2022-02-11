//
//  Main.swift
//  SWApp
//
//  Created by Diego Otero Mata on 10/2/22.
//

import UIKit
import SwiftUI

private let isRunningTest = NSClassFromString("XCTestsCase") != nil
private let appDelegateClass = isRunningTest ? NSStringFromClass(AppDelegate.self) : NSStringFromClass(UnitTestAppDelegate.self)

@main
struct MainApp {
    static func main() {
        if #available(iOS 14.0, *) {
            SWApp.main()
        } else {
            UIApplicationMain(CommandLine.argc, CommandLine.unsafeArgv, nil, appDelegateClass)
        }
    }
}

@available(iOS 14.0, *)
struct SWApp: App {
    var body: some Scene {
        WindowGroup {
            CategoriesView() // Add another view with content Text("From iOS 14+") to test both block runs
        }
    }
}

//UIApplicationMain(CommandLine.argc, CommandLine.unsafeArgv, nil, appDelegateClass)

final class UnitTestAppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = UIViewController()
        window?.makeKeyAndVisible()
        return true
    }
}
