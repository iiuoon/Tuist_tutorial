//
//  AppDelegate.swift
//  TuistApp
//
//  Created by 박지윤 on 6/28/25.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = ContentViewController()  // 루트 설정
        window?.makeKeyAndVisible()
        
        return true
    }
}
