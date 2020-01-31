//
//  Movie+Convenience.swift
//  MyMovies
//
//  Created by Michael on 1/31/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation
import CoreData

extension Movie {
    
    var movieRepresentation: MovieRepresentation? {
        guard
            let title = title
            else { return nil }
        return MovieRepresentation(title: title, identifier: identifier, hasWatched: hasWatched)
    }
    
    @discardableResult convenience init(title: String,
                                        hasWatched: Bool = false,
                                        identifier: UUID = UUID(),
                                        context: NSManagedObjectContext = CoreDataStack.shared.mainContext) {
        self.init(context: context)
        self.title = title
        self.hasWatched = hasWatched
        self.identifier = identifier
    }
    
    @discardableResult convenience init?(movieRepresentation: MovieRepresentation, context: NSManagedObjectContext = CoreDataStack.shared.mainContext) {
        
        guard let identifier = movieRepresentation.identifier else { return nil }
            
        
        self.init(title: movieRepresentation.title,
                  hasWatched: movieRepresentation.hasWatched ?? false,
                  identifier: identifier,
                  context: context)
    }
}
