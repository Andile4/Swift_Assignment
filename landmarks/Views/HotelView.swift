//
//  HotelView.swift
//  landmarks
//
//  Created by IACD Training 13 on 2024/05/01.
//

import SwiftUI

struct HotelView: View {
    @State private var selection: Tab = .featured
    
    enum Tab{
        case featured
        case list
    }
    
    var body: some View {
        
        TabView(selection: $selection){
            CateHotelHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)
            
            
            HotelList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
        
        
        
        
        
      //  LandmarkList()
      //  LandmarkList()
        
        
    }
}
#Preview {
    HotelView()
        .environment(HotelData())
    
}
