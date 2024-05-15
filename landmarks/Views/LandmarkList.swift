//
//  LandmarkList.swift
//  landmarks
//
//  Created by IACD Training 13 on 2024/04/10.
//

import SwiftUI

struct LandmarkList: View {
    @Environment(ModelData.self) var modelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark]{
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
            
        }
    }
    
    var body: some View {
        
        NavigationStack{
            List{
                Toggle(isOn: $showFavoritesOnly, label: {
                    Text("Favorities only")
                })
               ForEach (filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .animation(.default, value: filteredLandmarks)
            .navigationTitle("Landmarks")
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(.blue)
            .toolbarColorScheme(.dark)
              }
        //detail: {
                //   Text("Select a Landmark")
             //  }
    }
}
#Preview {
    LandmarkList()
        .environment(ModelData())
}

