//
//  MovieAppConstants.swift
//  MovieApp
//
//  Created by Ilham on 22/02/20.
//  Copyright © 2020 ilham. All rights reserved.
//

import UIKit

enum MovieAppConstants {
    struct URL {
        static let APIParamWithPage = "?api_key=a33154d8aff4fa94179e179cf95d843b&language=en-US&page="
        static let APIParamWithoutPage = "?api_key=a33154d8aff4fa94179e179cf95d843b&language=en-US"
        static let popularAddress = "https://api.themoviedb.org/3/movie/popular"
        static let topRatedAddress = "https://api.themoviedb.org/3/movie/top_rated"
        static let nowPlayingAddress = "https://api.themoviedb.org/3/movie/now_playing"
        static let detailMovieAdderss = "https://api.themoviedb.org/3/movie/"
        static let imageParam = "http://image.tmdb.org/t/p/w185"
        static let firstPage = "1"
        static let reviewParam = "/reviews"
    }
    
    struct MovieUserDefault {
        static let movie = "Movie"
    }
    
    struct TableViewCellNib {
        static let listMovie = "listMovieTableViewCell"
        static let listMovieReview = "listMovieReviewTableViewCell"
    }
    
    struct Animation {
        static let length = 3.0
    }
    
    struct Image {
        static let favouriteImage = UIImage(named: "ic-favourite")
    }
    
    struct Storyboard {
        static let listMovie = "listMovie"
        static let favouriteMovie = "FavouriteMovie"
        static let detailMovie = "detailMovie"
        
    }
    
    enum Message {
        struct Error {
            static let title = "Error"
            static let savedMovieNotFound = "Saved movie not found"
            static let savedMovie = "There is a error when save this movie"
            static let duplicateMovie = "This Movie already saved"
        }
        
        struct Success {
            static let title = "Success"
            static let savedMovie = "Success saved movie"
            static let removeMovie = "Success remove movie"
        }
    }
    
    enum FilterType: String {
        case Popular
        case TopRated
        case NowPlaying
    }
    
}
