//
//  CircleImage.swift
//  landmarks
//
//  Created by IACD Training 13 on 2024/04/09.
//

import SwiftUI

struct CircleImage: View {
    
    var image : Image
    
    var body: some View {
       
     image
            .clipShape(Circle())
           
            .overlay{
               Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
            
    }
}

#Preview {
    CircleImage(image : Image("turtlerock"))
}
