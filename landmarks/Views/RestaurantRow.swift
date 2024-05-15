//
//  RestaurantRow.swift
//  landmarks
//
//  Created by IACD Training 13 on 2024/04/22.
//

import SwiftUI

struct RestaurantRow: View {
    var restaurant: Restaurant
    
    var body: some View {
        HStack{
            
            restaurant.image
                .resizable()
                .frame(width:50, height:50)
            
            Text(restaurant.name)
            Spacer()
            
            if restaurant.isFavorite{
                
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
        }
       
    }
}

#Preview {
    Group {
        let restaurants = RestaurantData().restaurants
        return Group{
            RestaurantRow(restaurant: restaurants[0])
            RestaurantRow(restaurant: restaurants[1])
        }
    }
}
