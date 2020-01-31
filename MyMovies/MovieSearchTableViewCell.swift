//
//  MovieSearchTableViewCell.swift
//  MyMovies
//
//  Created by Michael on 1/31/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieSearchTableViewCell: UITableViewCell {

    weak var delegate: MovieSearchTableViewCellDelegate?
    
    @IBOutlet weak var addMovieButton: UIButton!
    @IBOutlet weak var movieTitleLabel: UILabel!
    
    func updateViews() {
        addMovieButton.titleLabel?.text = "Added"
    }
    
    @IBAction func addMovieButtonTapped(_ sender: Any) {
        delegate?.addMovieButtonTapped(for: self)
        updateViews()
    }
}
