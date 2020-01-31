//
//  MyMoviesTableViewCellDelegate.swift
//  MyMovies
//
//  Created by Michael on 1/31/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

protocol MyMoviesTableViewCellDelegate: AnyObject {
    func toggleWatchedButton(for cell: MyMoviesTableViewCell)
}
