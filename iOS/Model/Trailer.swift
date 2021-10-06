//
//  Trailer.swift
//  netflixclone
//
//  Created by David Okonkwo on 29/07/2021.
//

import Foundation

struct Trailer: Identifiable, Hashable {
    var id: String = UUID().uuidString
    var name: String
    var videoURL: URL
    var thumbnailImageURL: URL
}
