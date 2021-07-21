//
//  HomeVM.swift
//  netflixclone
//
//  Created by David Okonkwo on 21/07/2021.
//

import Foundation

class HomeVM: ObservableObject {
    
    // String == Category
    @Published var movies: [String: [Movie]] = [:]
    
    public var allCategories: [ String ] {
        movies.keys.map({ String($0) })
    }
    
    public func getMovies(forCat cat: String) -> [Movie] {
        return movies[cat] ?? []
    }
    
    init() {
        setupMovies()
    }
    
    func setupMovies() {
        movies["Trending Now"] = exampleMovies
        movies["Stand-Up Comedy"] = exampleMovies
        movies["New Release"] = exampleMovies
        movies["Watch It Again"] = exampleMovies
    }
}
