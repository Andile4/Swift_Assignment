//
//  landmarksApp.swift
//  landmarks
//
//  Created by IACD Training 13 on 2024/04/08.
//

import SwiftUI

@main
struct landmarksApp: App {
    @State private var modelData = ModelData()
    @State private var restaurantData = RestaurantData()
    @State private var hotelData = HotelData()
    var body: some Scene {
        WindowGroup {
           splash()
                .environment(modelData)
                .environment(restaurantData)
                .environment(hotelData)
        }
    }
}
