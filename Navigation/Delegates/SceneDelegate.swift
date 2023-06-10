//
//  SceneDelegate.swift
//  Navigation
//
//  Created by Дмитрий Агафонов on 04.06.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        guard let scene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: scene)
        
        let profileViewController = ProfileViewController()
        let firstNavigationController = UINavigationController(rootViewController: profileViewController)
        firstNavigationController.tabBarItem = UITabBarItem(
            title: "Profile",
            image: UIImage(systemName: "person"),
            tag: 0
        )
       
        let feedViewController = FeedViewController()
        let secondNavigationController = UINavigationController(rootViewController: feedViewController)
        secondNavigationController.tabBarItem = UITabBarItem(
            title: "Feed",
            image: UIImage(systemName: "highlighter"),
            tag: 1
        )
        
        let mainTabBarController = UITabBarController()
        mainTabBarController.tabBar.tintColor = .systemYellow
        mainTabBarController.viewControllers = [firstNavigationController, secondNavigationController]
                
        window.rootViewController = mainTabBarController
        window.makeKeyAndVisible()
        self.window = window
    }
}

