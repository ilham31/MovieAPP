//
//  MovieReviewModel.swift
//  MovieApp
//
//  Created by Ilham on 22/02/20.
//  Copyright © 2020 ilham. All rights reserved.
//

import UIKit
import ObjectMapper

class MovieReviewModel: Mappable {
    var author: String?
    var content: String?
    
    required init?(map: Map) {
        mapping(map: map)
    }
    
    func mapping(map: Map) {
        author <- map["author"]
        content <- map["content"]
    }
}

