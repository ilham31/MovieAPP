//
//  listMovieReviewTableViewCell.swift
//  MovieApp
//
//  Created by Ilham on 22/02/20.
//  Copyright © 2020 ilham. All rights reserved.
//

import UIKit

class listMovieReviewTableViewCell: UITableViewCell {
    struct ViewModel {
        let author: String
        let content: String
    }
    
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var contentReviewLabel: UILabel!
    
    func updateCell(_ model: ViewModel) {
        authorLabel.text = model.author
        contentReviewLabel.text = "Review: \n\n" + model.content
    }
}
