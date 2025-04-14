//
//  SceneDelegate.swift
//  ProfileApp
//
//  Created by Phil Wright on 4/13/25.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        // Setup the window
        let window = UIWindow(windowScene: windowScene)
        
        let viewController = UIViewController()
        let viewController2 = UIViewController()
        
        viewController.view.backgroundColor = .random
        viewController.title = "View Controller 1"
        
        viewController2.view.backgroundColor = .random
        viewController2.title = "View Controller 2"
        
        let navigationController = UINavigationController(rootViewController: viewController)
        navigationController.pushViewController(viewController2, animated: false)
        
        // Navigation Setup
        UINavigationBar.appearance().tintColor = .black
        UINavigationBar.appearance().barStyle = .default
        UINavigationBar.appearance().prefersLargeTitles = true
        
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        
        self.window = window
    }
}

