//
//  MyMoviesTableViewCell.swift
//  MyMovies
//
//  Created by Michael on 1/31/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MyMoviesTableViewCell: UITableViewCell {

    weak var delegate: MyMoviesTableViewCellDelegate?
    
    var movie: Movie? {
        didSet {
            updateViews()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        updateViews()   
    }
    
    @IBOutlet weak var watchedButton: UIButton!
    @IBOutlet weak var movieTitleLabel: UILabel!
    
    @IBAction func watchedButtonTapped(_ sender: Any) {
        delegate?.toggleWatchedButton(for: self)
    }
    
    func updateViews() {
        guard let movie = movie else { return }
        if movie.hasWatched {
            watchedButton.setTitle("Watched", for: .normal)
        } else {
            watchedButton.setTitle("Unwatched", for: .normal)
        }
    }
}
