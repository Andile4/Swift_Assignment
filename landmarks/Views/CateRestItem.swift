//
//  CateRestItem.swift
//  landmarks
//
//  Created by IACD Training 13 on 2024/05/01.
//

import SwiftUI

struct CateRestItem: View {
    var restaurant: Restaurant

    var body: some View {
        VStack(alignment: .leading) {
            restaurant.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(restaurant.name)
                .foregroundStyle(.primary)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}


#Preview {
    CateRestItem(restaurant: RestaurantData().restaurants[0])
}
