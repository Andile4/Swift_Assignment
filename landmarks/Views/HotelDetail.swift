//
//  HotelDetail.swift
//  landmarks
//
//  Created by IACD Training 13 on 2024/04/20.
//

import SwiftUI

struct HotelDetail: View {
    @Environment(HotelData.self) var hotelData
    var hotel: Hotel
    
    var hotelIndex: Int {
        hotelData.hotels.firstIndex(where: { $0.id == hotel.id})!
    }
    
    
    
    var body: some View {
        
        @Bindable var hotelData = hotelData
        ScrollView {
            MapView(coordinate: hotel.locationCoordinate)
                .frame(height:300)
            
            CircleImage(image: hotel.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
        }
        
        VStack (alignment: .leading){
            
            HStack{
                Text(hotel.name)
                    .font(.title)
                FavoriteButton(isSet: $hotelData.hotels[hotelIndex].isFavorite)
            }
            
            HStack{
                Text(hotel.park)
                    .font(.subheadline)
                Spacer()
                Text(hotel.state)
                    .font(.subheadline)
            }
            .font(.subheadline)
            .foregroundStyle(.secondary)
            Divider()
            
            
            Text("About \(hotel.name)")
                .font(.title2)
            Text(hotel.description)
        }
        .padding()
        
    }
}
#Preview {
    let hotelData = HotelData()
    return HotelDetail(hotel: HotelData().hotels[0])
        .environment(hotelData)
}
