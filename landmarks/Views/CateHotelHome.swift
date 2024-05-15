//
//  CateHotelHome.swift
//  landmarks
//
//  Created by IACD Training 13 on 2024/05/01.
//

import SwiftUI

struct CateHotelHome: View {
    @Environment(HotelData.self) var hotelData
    
    var body: some View {
        NavigationStack{
            
            Text("Featured")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            List {
                hotelData.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())

                ForEach(hotelData.categories.keys.sorted(), id: \.self) { key in
                    CateHotelRow(categoryName: key, items: hotelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .listStyle(.inset)
        } 
    }
}

#Preview {
    CateHotelHome()
        .environment(HotelData())
}
