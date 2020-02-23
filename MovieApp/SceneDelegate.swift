//
//  SceneDelegate.swift
//  MovieApp
//
//  Created by Ilham on 22/02/20.
//  Copyright © 2020 ilham. All rights reserved.
//

import UIKit

@available(iOS 13.0, *)
class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        self.window = UIWindow(windowScene: windowScene)
        
        let mainStoryboard: UIStoryboard = UIStoryboard(name: "listMovie", bundle: nil)
        let listMovieViewController: listMovieViewController  = mainStoryboard.instantiateViewController(withIdentifier: "listMovie") as! listMovieViewController
        
        let nav = UINavigationController(rootViewController: listMovieViewController)
        
        self.window!.rootViewController = nav
        self.window?.makeKeyAndVisible()
    }
}
