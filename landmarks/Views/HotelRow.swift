//
//  HotelRow.swift
//  landmarks
//
//  Created by IACD Training 13 on 2024/04/20.
//

import SwiftUI

struct HotelRow: View {
    var hotel: Hotel

    
    var body: some View {
        HStack{
            
            hotel.image
                .resizable()
                .frame(width:50, height:50)
            
            Text(hotel.name)
            Spacer()
            
            if hotel.isFavorite{
                
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
        }
       
    }
}

#Preview {
  
        let hotels = HotelData().hotels
        return Group{
            HotelRow(hotel: hotels[0])
        }
 
}
