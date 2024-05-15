//
//  RestaurantList.swift
//  landmarks
//
//  Created by IACD Training 13 on 2024/04/22.
//

import SwiftUI

struct RestaurantList: View {
    @Environment(RestaurantData.self) var restaurantData
    @State private var showFavoritesOnly = false
    
    var filteredRestaurants: [Restaurant]{
        restaurantData.restaurants.filter { restaurant in
            (!showFavoritesOnly || restaurant.isFavorite)
            
        }
    }
    
    var body: some View {
        
        NavigationStack {
            List{
                Toggle(isOn: $showFavoritesOnly, label: {
                    Text("Favorities only")
                })
                ForEach(filteredRestaurants) { restaurant in
                    NavigationLink {
                        RestaurantDetail(restaurant: restaurant)
                    } label: {
                        RestaurantRow(restaurant: restaurant)
                    }
                }
            }
            .navigationTitle("Restaurants")
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(.blue)
            .toolbarColorScheme(.dark)
               }
    //detail: {
            //       Text("Select a restaurant")
             //  }
    }
}
#Preview {
    RestaurantList()
        .environment(RestaurantData())
}
