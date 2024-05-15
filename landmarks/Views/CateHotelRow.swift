//
//  CateHotelRow.swift
//  landmarks
//
//  Created by IACD Training 13 on 2024/05/01.
//

import SwiftUI

struct CateHotelRow: View {
    var categoryName: String
    var items: [Hotel]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { hotel in
                        NavigationLink {
                            HotelDetail(hotel: hotel)
                        } label: {
                            CateHotelItem(hotel: hotel)
                        }
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

#Preview {
    let hotels = HotelData().hotels
    return CateHotelRow(
        categoryName: hotels[0].category.rawValue,
        items: Array(hotels.prefix(4))
    )
}
