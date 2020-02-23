//
//  listMovieTableViewCell.swift
//  MovieApp
//
//  Created by Ilham on 22/02/20.
//  Copyright © 2020 ilham. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage

class listMovieTableViewCell: UITableViewCell {
    struct ViewModel: Codable {
        let idMovie: Int
        let movieThumbnailURL: String
        let movieTitle: String
        let movieReleaseDate: String
        let movieOverview: String
    }
    
    @IBOutlet weak var movieThumbnail: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieReleaseDate: UILabel!
    @IBOutlet weak var movieOverview: UILabel!
    
    func updateCell(_ model: ViewModel) {
        
        movieTitle.text = model.movieTitle
        movieReleaseDate.text = model.movieReleaseDate
        movieOverview.text = model.movieOverview
        setupThumbnail(thumbnailUrl: model.movieThumbnailURL)
    }
    
    func setupDetailCell(_ model: ViewModel) {
        movieTitle.text = model.movieTitle
        movieReleaseDate.text = model.movieReleaseDate
        movieOverview.text = model.movieOverview
        movieOverview.numberOfLines = 0
        setupThumbnail(thumbnailUrl: model.movieThumbnailURL)
    }
    
    private func setupThumbnail(thumbnailUrl urlString: String) {
        Alamofire.request(MovieAppConstants.URL.imageParam+urlString).responseImage { response in
            if let image = response.result.value {
                self.movieThumbnail.image = image
            }
        }
    }
}
