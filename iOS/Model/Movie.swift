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
    
    //MovieDetail View
    var year: Int
    var rating: String
    var numberOfSeasons: Int?
    var episodes: [Episode]?
    
    var promotionHeadline: String?
    
    var numberOfSeasonsDisplay: String {
        if let num = numberOfSeasons {
            if num == 1 {
                return "1 Season"
            } else {
                return "\(num) Seaons"
            }
        }
        return ""
    }
    
}
