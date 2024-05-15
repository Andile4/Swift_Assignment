//
//  CateRestHome.swift
//  landmarks
//
//  Created by IACD Training 13 on 2024/05/01.
//

import SwiftUI

struct CateRestHome: View {
    @Environment(RestaurantData.self) var restaurantData
    //@Environment(ModelData.self) var modelData
    @State private var showingProfile = false
    var body: some View {
        NavigationStack{
            
            Text("Featured")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            List {
                restaurantData.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())

                ForEach(restaurantData.categories.keys.sorted(), id: \.self) { key in
                    CateRestRow(categoryName: key, items: restaurantData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
               

            }
            .navigationTitle("featured")
            .listStyle(.inset)
         
          
        }
    }
}

#Preview {
    CateRestHome()
        .environment(RestaurantData())
}
