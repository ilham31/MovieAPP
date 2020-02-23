//
//  MovieAppTestConstant.swift
//  MovieAppTests
//
//  Created by Ilham on 22/02/20.
//  Copyright © 2020 ilham. All rights reserved.
//

@testable import MovieApp
import ObjectMapper

struct MovieAppTestConstant {
    static var movieModelStub: MovieModels {
        let jsonDictionary: [String : Any] = ["id": 1, "title": "titleTest", "release_date": "01.01.2020", "overview": "overview test", "poster_path": "thumbnailTest.jpg"]
        let model = Mapper<MovieModels>().map(JSONObject: jsonDictionary)
        return model!
    }
    
    static var listMovieDataStub: listMovieTableViewCell.ViewModel {
        return listMovieTableViewCell.ViewModel(idMovie: 1, movieThumbnailURL: "test", movieTitle: "test", movieReleaseDate: "test", movieOverview: "test")
    }
}
