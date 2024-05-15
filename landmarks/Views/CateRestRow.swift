//
//  CateRestRow.swift
//  landmarks
//
//  Created by IACD Training 13 on 2024/05/01.
//

import SwiftUI

struct CateRestRow: View {
    var categoryName: String
    var items: [Restaurant]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { restaurant in
                        NavigationLink {
                            RestaurantDetail(restaurant: restaurant)
                        } label: {
                            CateRestItem(restaurant: restaurant)
                        }
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

#Preview {
    let restaurants = RestaurantData().restaurants
    return CateRestRow(
        categoryName: restaurants[0].category.rawValue,
        items: Array(restaurants.prefix(4))
    )
}
