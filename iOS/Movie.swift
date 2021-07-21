//
//  Movie.swift
//  netflixclone
//
//  Created by David Okonkwo on 21/07/2021.
//

import Foundation

struct Movie: Identifiable {
    var id: String
    var name: String
    var thumbnail: URL
    var categories: [String]
    
}
