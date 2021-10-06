//
//  EpisodeView.swift
//  netflixclone
//
//  Created by David Okonkwo on 06/10/2021.
//

import SwiftUI

struct EpisodeView: View {
    var episodes: [Episode]
    @Binding var showSeasonPicker: Bool
    @Binding var selectedSeason: Int
    
    func getEpisodes(forSeason season: Int) -> [Episode] {
        return episodes.filter({ $0.season == season})
    }
    
    var body: some View {
        VStack {
            // Seasons picker
            HStack {
                Button(action: {
                    showSeasonPicker = true
                }, label: {
                    Group {
                        Text("Season 1")
                        Image(systemName: "chevron.down")
                    }
                    .font(.system(size: 16))
                    
                })
                Spacer()
            }
            
            // episode list
            ForEach(getEpisodes(forSeason: selectedSeason)) { episode in
                Text("Text")
            }
            Spacer()
        }
        .foregroundColor(.white)
    }
}

struct EpisodeView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.ignoresSafeArea(.all)
            EpisodeView(episodes: allExampleEpisodes, showSeasonPicker: .constant(false), selectedSeason: .constant(1))
        }
    }
}
