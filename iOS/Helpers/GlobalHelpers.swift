//
//  GlobalHelpers.swift
//  netflixclone
//
//  Created by David Okonkwo on 21/07/2021.
//

import Foundation
import SwiftUI


let exampleVideoURL = URL(string: "https://www.radiantmediaplayer.com/media/big-buck-bunny-360p.mp4")!

let exampleMovie1 = Movie(
    id: UUID().uuidString,
    name: "DARK",
    thumbnail: URL(string: "https://picsum.photos/200/300")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020, rating: "TV-MA",
    numberOfSeasons: 1,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "David Okonkwo",
    cast: "Ben Kay, Jessie Kahn, Danny Ben",
    moreLikrThisMovies: [exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6, exampleMovie7]
)
let exampleMovie2 = Movie(
    id: UUID().uuidString,
    name: "Travelers",
    thumbnail: URL(string: "https://picsum.photos/200/301")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020, rating: "TV-MA",
    numberOfSeasons: 2,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "David Okonkwo",
    cast: "Ben Kay, Jessie Kahn, Danny Ben",
    moreLikrThisMovies: [])
let exampleMovie3 = Movie(
    id: UUID().uuidString,
    name: "Community",
    thumbnail: URL(string: "https://picsum.photos/200/302")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020, rating: "TV-MA",
    numberOfSeasons: 3,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "David Okonkwo",
    cast: "Ben Kay, Jessie Kahn, Danny Ben",
    moreLikrThisMovies: [])
let exampleMovie4 = Movie(
    id: UUID().uuidString,
    name: "Alone",
    thumbnail: URL(string: "https://picsum.photos/200/303")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020, rating: "TV-MA",
    numberOfSeasons: 4,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "David Okonkwo",
    cast: "Ben Kay, Jessie Kahn, Danny Ben",
    moreLikrThisMovies: [])
let exampleMovie5 = Movie(
    id: UUID().uuidString,
    name: "Hannibal",
    thumbnail: URL(string: "https://picsum.photos/200/304")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020, rating: "TV-MA",
    numberOfSeasons: 5,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "David Okonkwo",
    cast: "Ben Kay, Jessie Kahn, Danny Ben",
    moreLikrThisMovies: [],
    promotionHeadline: "New Episodes Coming Soon")
let exampleMovie6 = Movie(
    id: UUID().uuidString,
    name: "After Life",
    thumbnail: URL(string: "https://picsum.photos/200/305")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 6,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "David Okonkwo",
    cast: "Ben Kay, Jessie Kahn, Danny Ben",
    moreLikrThisMovies: [],
    promotionHeadline: "Watch Season 6 Now")
let exampleMovie7 = Movie(
    id: UUID().uuidString,
    name: "After Life",
    thumbnail: URL(string: "https://picsum.photos/200/305")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 6,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "David Okonkwo",
    cast: "Ben Kay, Jessie Kahn, Danny Ben",
    moreLikrThisMovies: [],
    promotionHeadline: "Watch Season 6 Now")

var exampleMovies: [Movie] {
    [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6, exampleMovie7].shuffled()
}
let exampleEpisodeInfo1 = CurrentEpisodeInfo(
    episodeName: "Beginning and the End",
    description: "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content",
    season: 2,
    episode: 1)

extension LinearGradient {
    static let blackOpacityGradient = LinearGradient(
        gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]),
        startPoint: .top,
        endPoint: .bottom)
}

extension String {
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
}
