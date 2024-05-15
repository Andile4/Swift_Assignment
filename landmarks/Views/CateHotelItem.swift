//
//  CateHotelItem.swift
//  landmarks
//
//  Created by IACD Training 13 on 2024/05/01.
//

import SwiftUI

struct CateHotelItem: View {
    var hotel: Hotel

    var body: some View {
        VStack(alignment: .leading) {
            hotel.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(hotel.name)
                .foregroundStyle(.primary)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}


#Preview {
    CateHotelItem(hotel: HotelData().hotels[0])
}
