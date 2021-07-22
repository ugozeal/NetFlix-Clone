//
//  CustomTabSwitcher.swift
//  netflixclone
//
//  Created by David Okonkwo on 22/07/2021.
//

import SwiftUI

struct CustomTabSwitcher: View {
    var tabs: [CustomTab]
    
    func widthForTab(_ tab: CustomTab) -> CGFloat {
        let string = tab.rawValue
        return string.widthOfString(usingFont: .systemFont(ofSize: 16, weight: .bold))
    }
    
    var body: some View {
        
        VStack {
            // Scrollable Tab Picker
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(tabs, id: \.self) { tab in
                        VStack {
                            //Red bar
                            Rectangle()
                                .frame(width: widthForTab(tab), height: 6)
                            
                            //Button
                            Button(action: {
                                // action
                                
                            }, label: {
                                Text(tab.rawValue)
                                    .font(.system(size: 16, weight: .bold))
                            })
                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                }
            }
            
            //Selected view
            Text("Selected View")
        }
        .foregroundColor(.white)
        
    }
}

enum CustomTab: String {
    case episodes = "EPISODES"
    case trailers = "TRAILERS & MORE"
    case mare = "MORE LIKE THIS"
}

struct CustomTabSwitcher_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            CustomTabSwitcher(tabs: [.episodes, .trailers, .mare])
        }
    }
}
