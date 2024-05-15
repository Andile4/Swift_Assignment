//
//  LandmarkDetail.swift
//  landmarks
//
//  Created by IACD Training 13 on 2024/04/11.
//

import SwiftUI

struct LandmarkDetail: View {
    
    @Environment(ModelData.self) var modelData
    
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id})!
    }
    
    var body: some View {
        @Bindable var modelData = modelData
        
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height:300)
            
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
                
            
        }
        
        VStack (alignment: .leading){
            
            HStack{
                Text(landmark.name)
                    .font(.title)
                FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
            }
            

            HStack{
                Text(landmark.park)
                    .font(.subheadline)
                Spacer()
                Text(landmark.state)
                    .font(.subheadline)
            }
            .font(.subheadline)
            .foregroundStyle(.secondary)
            Divider()
            
            
            VStack {
                Text("About \(landmark.name)")
                    .font(.title2)
            }
            Text(landmark.description)
        }
        .padding()
        
    }
}
#Preview {
    let modelData = ModelData()
    
    return LandmarkDetail(landmark: ModelData().landmarks[0])
        .environment(modelData)
}

