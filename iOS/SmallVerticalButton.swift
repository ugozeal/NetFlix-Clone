//
//  SmallVerticalButton.swift
//  netflixclone
//
//  Created by David Okonkwo on 21/07/2021.
//

import SwiftUI

struct SmallVerticalButton: View {
    
    //MARK: Properties
    var text: String
    var isOnImage: String
    var isOffImage: String
    var isOn: Bool
    
    var imageName: String {
        if isOn {
            return isOnImage
        } else {
            return isOffImage
        }
    }
    
    
    
    
    
    
    var action: () -> Void
    
    //MARK: Body
    var body: some View {
        Button(action: {
            //action
            action()
        }, label: {
            VStack {
                Image(systemName: imageName)
                    .foregroundColor(.white)
                
                Text(text)
                    .foregroundColor(.white)
                    .font(.system(size: 14))
                    .bold()
            }
        })
    }
}

struct SmallVerticalButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: false) {
                print("Tapped")
            }
        }
    }
}
