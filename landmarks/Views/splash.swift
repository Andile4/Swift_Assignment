//
//  splash.swift
//  landmarks
//
//  Created by IACD Training 13 on 2024/05/03.
//

import SwiftUI

struct splash: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        
        if isActive{
         LoginPage()
        }
        else{
            VStack{
                VStack{
                    Image(systemName: "location")
                        .font(.system(size: 80))
                        .foregroundColor(.blue)
                    Text("Know My City")
                        .font(Font.custom("Baskerville-Bold", size: 26))
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeIn(duration: 1.6)){
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
                
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 3.0){
                    withAnimation{
                        self.isActive = true
                    }
                   
                }
            }
        }
        
        
       
    }
}

#Preview {
    splash()
}
