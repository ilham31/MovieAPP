//
//  listMovieRouter.swift
//  MovieApp
//
//  Created by Ilham on 21/02/20.
//  Copyright (c) 2020 ilham. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol listMovieRoutingLogic {
    func routeToDetailMovie(movieData: listMovieTableViewCell.ViewModel)
    func routeToFavouritePage()
}

class listMovieRouter: listMovieRoutingLogic {
    weak var viewController: listMovieViewController?
    
    // MARK: Routing
    func routeToDetailMovie(movieData: listMovieTableViewCell.ViewModel) {
        let vc = detailMovieViewController.instantiate()
        vc.movieData = movieData
        viewController?.navigationController?.pushViewController(vc, animated: true)
    }
    
    func routeToFavouritePage() {
        let vc = favouriteMovieViewController.instantiate()
        viewController?.navigationController?.pushViewController(vc, animated: true)
    }
}