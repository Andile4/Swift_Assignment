//
//  HotelList.swift
//  landmarks
//
//  Created by IACD Training 13 on 2024/04/20.
//

import SwiftUI

struct HotelList: View {
    @Environment(HotelData.self) var hotelData
    @State private var showFavoritesOnly = false
    
    var filteredHotels: [Hotel]{
        hotelData.hotels.filter { hotel in
            (!showFavoritesOnly || hotel.isFavorite)
            
        }
    }
    
    var body: some View {
        VStack{
               NavigationStack {
                   
                   List{
                       Toggle(isOn: $showFavoritesOnly, label: {
                           Text("Favorities only")
                       })
                       ForEach(filteredHotels) { hotel in
                           NavigationLink {
                               HotelDetail(hotel: hotel)
                           } label: {
                               HotelRow(hotel: hotel)
                           }
                       }
                   }
            .navigationTitle("Hotels")
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(.blue)
            .toolbarColorScheme(.dark)
              }
            
            
          //   detail: {
           //         Text("Select a Hotel")
            //   }
        }
    }
}
#Preview {
  HotelList()
        .environment(HotelData())
}
