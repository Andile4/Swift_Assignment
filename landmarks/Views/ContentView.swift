//
//  ContentView.swift
//  landmarks
//
//  Created by IACD Training 13 on 2024/04/08.
//

import SwiftUI

struct ContentView: View {
    @Environment(ModelData.self) var modelData
    @State private var showingProfile = false
    @State private var selection: Tab = .featured
    
    enum Tab{
        case featured
        case list
    }
    
    var body: some View {
        
        TabView(selection: $selection){
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)
            
            
            LandmarkList()
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
    ContentView()
        .environment(ModelData())
    
}
