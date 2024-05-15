//
//  Home3.swift
//  landmarks
//
//  Created by IACD Training 13 on 2024/04/23.
//

import SwiftUI

struct Home3: View {
    var body: some View {
        TabView{
           // NavigationStack{
                
              
                
                
        //    }
            home()
            .tabItem {
                Label("Home",
                      systemImage: "house")
                
            }
       /*     HotelList()
            
                .tabItem {
                    Label("Description",
                          systemImage: "info")
                    
                }*/
            profile()
            
                .tabItem {
                    Label("Account",
                          systemImage: "gear")
                    
                }
        }
    }
}

#Preview {
    Home3()
}
