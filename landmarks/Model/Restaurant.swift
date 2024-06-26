//
//  Restaurant.swift
//  landmarks
//
//  Created by IACD Training 13 on 2024/04/22.
//

import Foundation
import SwiftUI
import CoreLocation

struct Restaurant: Hashable, Codable, Identifiable{
    
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    var isFeatured: Bool
   
    var category: Category
    enum Category: String, CaseIterable, Codable{
        case five = "Coffe-Shops"
        case four = "Dinner"
        case three = "Super"
    }
    
    
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    
    
    private var coordinates: Coordinates
       var locationCoordinate: CLLocationCoordinate2D {
           CLLocationCoordinate2D(
               latitude: coordinates.latitude,
               longitude: coordinates.longitude)
       }
    
    
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
    
   
    
}
