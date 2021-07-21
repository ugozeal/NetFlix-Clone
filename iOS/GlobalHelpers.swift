//
//  GlobalHelpers.swift
//  netflixclone
//
//  Created by David Okonkwo on 21/07/2021.
//

import Foundation

let exampleMovie1 = Movie(id: UUID().uuidString, name: "DARK", thumbnail: URL(string: "https://picsum.photos/200/300")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"])
let exampleMovie2 = Movie(id: UUID().uuidString, name: "Travelers", thumbnail: URL(string: "https://picsum.photos/200/301")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"])
let exampleMovie3 = Movie(id: UUID().uuidString, name: "Community", thumbnail: URL(string: "https://picsum.photos/200/302")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"])
let exampleMovie4 = Movie(id: UUID().uuidString, name: "Alone", thumbnail: URL(string: "https://picsum.photos/200/303")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"])
let exampleMovie5 = Movie(id: UUID().uuidString, name: "Hannibal", thumbnail: URL(string: "https://picsum.photos/200/304")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"])
let exampleMovie6 = Movie(id: UUID().uuidString, name: "After Life", thumbnail: URL(string: "https://picsum.photos/200/305")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"])

let exampleMovies: [Movie] = [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6]
