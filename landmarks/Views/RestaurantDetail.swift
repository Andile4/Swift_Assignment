//
//  RestaurantDetail.swift
//  landmarks
//
//  Created by IACD Training 13 on 2024/04/22.
//

import SwiftUI

struct RestaurantDetail: View {
    @Environment(RestaurantData.self) var restaurantData
    var restaurant: Restaurant
    
    var restaurantIndex: Int {
        restaurantData.restaurants.firstIndex(where: { $0.id == restaurant.id})!
    }
    
    var body: some View {
        @Bindable var restaurantData = restaurantData
        
        ScrollView {
            MapView(coordinate: restaurant.locationCoordinate)
                .frame(height:300)
            
            CircleImage(image: restaurant.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
        }
        
        VStack (alignment: .leading){
            HStack{
                Text(restaurant.name)
                    .font(.title)
                FavoriteButton(isSet: $restaurantData.restaurants[restaurantIndex].isFavorite)
            }
            
            HStack{
                Text(restaurant.park)
                    .font(.subheadline)
                Spacer()
                Text(restaurant.state)
                    .font(.subheadline)
            }
            .font(.subheadline)
            .foregroundStyle(.secondary)
            Divider()
            
            
            Text("About \(restaurant.name)")
                .font(.title2)
            Text(restaurant.description)
        }
        .padding()
        
    }
}
#Preview {
    let restaurantData = RestaurantData()
    
    return RestaurantDetail(restaurant: RestaurantData().restaurants[0])
        .environment(restaurantData)
}

