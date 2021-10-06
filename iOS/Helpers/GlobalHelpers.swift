//
//  GlobalHelpers.swift
//  netflixclone
//
//  Created by David Okonkwo on 21/07/2021.
//

import Foundation
import SwiftUI


let exampleVideoURL = URL(string: "https://www.radiantmediaplayer.com/media/big-buck-bunny-360p.mp4")!
let exampleImageURL = URL(string: "https://picsum.photos/300/104")!
let exampleImageURL1 = URL(string: "https://picsum.photos/300/105")!
let exampleImageURL2 = URL(string: "https://picsum.photos/300/106")!
let exampleImageURL3 = URL(string: "https://picsum.photos/300/107")!
let exampleImageURL4 = URL(string: "https://picsum.photos/300/108")!
var randomExampleImageURl: URL {
    return [exampleImageURL, exampleImageURL1, exampleImageURL2, exampleImageURL3, exampleImageURL4].randomElement() ?? exampleImageURL
}
let exampleTrailer = Trailer(name: "Season 3 Trailer", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURl)
let exampleTrailer1 = Trailer(name: "The Heroes Journey", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURl)
let exampleTrailer2 = Trailer(name: "Squid Game", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURl)
let exampleTrailer3 = Trailer(name: "The Avengers", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURl)
let exampleTrailer4 = Trailer(name: "The Last Dance", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURl)
let exampleTrailers = [exampleTrailer, exampleTrailer2, exampleTrailer1, exampleTrailer3, exampleTrailer4]

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
    moreLikrThisMovies: [exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6, exampleMovie7],
    trailers: exampleTrailers
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
    moreLikrThisMovies: [],
    trailers: exampleTrailers
)

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
    moreLikrThisMovies: [],
    trailers: exampleTrailers
)

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
    moreLikrThisMovies: [],
    trailers: exampleTrailers
)

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
    promotionHeadline: "New Episodes Coming Soon",
    trailers: exampleTrailers
)

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
    promotionHeadline: "Watch Season 6 Now",
    trailers: exampleTrailers
)

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
    promotionHeadline: "Watch Season 6 Now",
    trailers: exampleTrailers
)

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
